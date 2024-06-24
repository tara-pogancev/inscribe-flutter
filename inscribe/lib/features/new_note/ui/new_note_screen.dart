import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/ui/gift_ideas/note_gift_ideas_page.dart';
import 'package:inscribe/features/new_note/ui/new_note_header.dart';
import 'package:inscribe/features/new_note/ui/note_tab_bar.dart';
import 'package:inscribe/features/new_note/ui/overview/note_overview_page.dart';
import 'package:inscribe/features/new_note/ui/reminders/note_reminders_page.dart';
import 'package:inscribe/features/new_note/usecases/get_random_profile_image_usecase.dart';

class NewNoteScreen extends StatefulWidget {
  const NewNoteScreen({super.key, this.note = const Note()});

  final Note note;

  @override
  State<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen> {
  final getRandomProfileImageUseCase = GetRandomProfileImageUseCase();

  final _formKey = GlobalKey<FormState>();

  final _bloc = IC.getIt<NewNoteBloc>();

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
        child: DefaultTabController(
          length: noteTabsNumber,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: newNoteAppBarExpandedHeight,
                  automaticallyImplyLeading: false,
                  flexibleSpace: NewNoteHeader(),
                  pinned: true,
                  bottom: NoteTabBar(),
                ),
              ];
            },
            body: TabBarView(
              children: [
                NoteOverviewPage(
                  initialNote: note,
                ),
                NoteGiftIdeasPage(
                  initialNote: note,
                ),
                NoteRemindersPage(
                  initialNote: note,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
