import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/ui/new_note_header.dart';
import 'package:inscribe/features/new_note/ui/note_tab_bar.dart';
import 'package:inscribe/features/new_note/ui/note_tabs_switcher.dart';
import 'package:inscribe/features/new_note/usecases/get_random_profile_image_usecase.dart';

const noteTabsNumber = 3;

class NewNoteScreen extends StatefulWidget {
  const NewNoteScreen({super.key, this.note = const Note()});

  final Note note;

  @override
  State<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen>
    with SingleTickerProviderStateMixin {
  final getRandomProfileImageUseCase = GetRandomProfileImageUseCase();

  final _formKey = GlobalKey<FormState>();

  final _bloc = IC.getIt<NewNoteBloc>();

  late TabController _tabController;

  late final Note note;

  void _goBack({bool shouldRefresh = false}) {
    context.pop(shouldRefresh);
  }

  void _validateForm() async {
    final isFormValid = _formKey.currentState!.validate();
    if (isFormValid) {
      _formKey.currentState!.save();
      Future.delayed(Durations.short1);
      _bloc.add(SaveNoteEvent());
    } else {
      context.showSnackbar(
          snackbarText:
              Translations.of(context).newNoteScreen.some_fields_are_missing);
    }
  }

  void _onSuccess() {
    context.showSnackbar(
        snackbarText: Translations.of(context).newNoteScreen.note_saved);
    _goBack(shouldRefresh: true);
  }

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: noteTabsNumber);

    if (widget.note.id == null) {
      note = Note(
        name: "",
        assetImage: getRandomProfileImageUseCase(),
      );
      _bloc.add(UpdateNoteEvent(note: note));
    } else {
      note = widget.note;
      _bloc.add(UpdateNoteEvent(note: note));
    }

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      fab: BlocConsumer<NewNoteBloc, NewNoteState>(
        bloc: _bloc,
        listener: (context, state) {
          if (state.isSuccess) {
            _onSuccess();
          }
        },
        builder: (context, state) {
          return AppFloatingActionButton(
            onPressed: () {
              _validateForm();
            },
            icon: const Icon(Icons.save_outlined),
          );
        },
      ),
      child: Form(
        key: _formKey,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(child: NewNoteHeader()),
            SliverToBoxAdapter(
              child: NoteTabBar(
                tabController: _tabController,
              ),
            ),
          ],
          body: NoteTabsSwitcher(
            controller: _tabController,
            initialNote: note,
          ),
        ),
      ),
    );
  }
}
