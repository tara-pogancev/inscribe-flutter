// ignore_for_file: use_build_context_synchronously

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
import 'package:inscribe/features/note_details/bloc/note_details_bloc.dart';
import 'package:inscribe/features/note_details/ui/dialog/unsaved_changes_dialog.dart';
import 'package:inscribe/features/note_details/ui/gift_ideas/note_gift_ideas_page.dart';
import 'package:inscribe/features/note_details/ui/note_details_header.dart';
import 'package:inscribe/features/note_details/ui/note_tab_bar.dart';
import 'package:inscribe/features/note_details/ui/overview/note_overview_page.dart';
import 'package:inscribe/features/note_details/ui/reminders/note_reminders_page.dart';
import 'package:inscribe/features/note_details/usecases/get_random_profile_image_usecase.dart';

class NoteDetailsScreen extends StatefulWidget {
  const NoteDetailsScreen({super.key, this.noteId});

  final String? noteId;

  @override
  State<NoteDetailsScreen> createState() => _NoteDetailsScreenState();
}

class _NoteDetailsScreenState extends State<NoteDetailsScreen> {
  final getRandomProfileImageUseCase = GetRandomProfileImageUseCase();

  final _formKey = GlobalKey<FormState>();

  final _bloc = IC.getIt<NoteDetailsBloc>();

  late final Note note;

  void _goBackSuccess() {
    context.pop(true);
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
    _goBackSuccess();
  }

  Future<bool?> _goBack() async {
    if (_bloc.state.hasChanges) {
      final shouldSave = await showDialog(
          context: context,
          builder: (context) => const UnsavedChangesDialog()) as bool?;

      if (shouldSave ?? false) {
        _validateForm();
      } else {
        Navigator.pop(context, true);
      }
    } else {
      Navigator.pop(context, true);
    }
    return null;
  }

  @override
  void initState() {
    if (widget.noteId == null) {
      note = Note(
        name: "",
        assetImage: getRandomProfileImageUseCase(),
      );
      _bloc.add(UpdateNoteEvent(note: note));
    } else {
      note = _bloc.getNoteById(widget.noteId!);
      _bloc.add(UpdateNoteEvent(note: note));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      // ignore: deprecated_member_use
      onPopInvoked: (bool didPop) async {
        if (didPop) {
          return;
        }
        final bool shouldPop = await _goBack() ?? false;
        if (context.mounted && shouldPop) {
          Navigator.pop(context);
        }
      },
      child: AppScaffold(
        ignoreAllPadding: true,
        fab: BlocConsumer<NoteDetailsBloc, NoteDetailsState>(
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
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverAppBar(
                      expandedHeight: newNoteAppBarExpandedHeight,
                      automaticallyImplyLeading: false,
                      flexibleSpace: NoteDetailsHeader(
                        onBack: () => _goBack(),
                      ),
                      pinned: true,
                      bottom: const NoteTabBar(),
                    ),
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
                ]
                    .map((tabView) => Builder(
                          builder: (context) => CustomScrollView(
                            slivers: [
                              SliverOverlapInjector(
                                handle: NestedScrollView
                                    .sliverOverlapAbsorberHandleFor(context),
                              ),
                              SliverToBoxAdapter(
                                child: tabView,
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
