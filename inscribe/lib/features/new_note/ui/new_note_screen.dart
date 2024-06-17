import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/ui/circle_image.dart';
import 'package:inscribe/features/new_note/ui/note_name_text_field.dart';
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
    super.initState();
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
            SliverToBoxAdapter(child: _buildHeader()),
            SliverToBoxAdapter(
              child: NoteTabBar(
                tabController: _tabController,
              ),
            ),
          ],
          body: NoteTabsSwitcher(
            controller: _tabController,
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/wave_profile_cover.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      onPressed: () {
                        _goBack();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppColorScheme.of(context).beige,
                      ),
                    )
                  ],
                ),
                CircleImage(
                  imageName: note.assetImage,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: NoteNameTextField(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
