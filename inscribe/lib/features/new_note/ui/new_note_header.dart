import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/bloc/delete_note_bloc/delete_note_bloc.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/ui/circle_image.dart';
import 'package:inscribe/features/new_note/ui/dialog/archive_note_dialog.dart';
import 'package:inscribe/features/new_note/ui/note_name_text_field.dart';

class NewNoteHeader extends StatelessWidget {
  NewNoteHeader({super.key});

  final _bloc = IC.getIt<NewNoteBloc>();
  final _deleteNoteBloc = IC.getIt<DeleteNoteBloc>();

  void _goBack(BuildContext context) {
    context.pop();
  }

  void _toggleNotePin() {
    _bloc.add(ToggleNotePinEvent());
  }

  void _archiveNote(BuildContext context) async {
    final shouldDelete = await showDialog(
            context: context,
            builder: (context) => ArchiveNoteDialog(note: _bloc.state.note))
        as bool?;

    if (shouldDelete ?? false) {
      _deleteNoteBloc.add(ArchiveNote(note: _bloc.state.note));
      context.showSnackbar(
        snackbarText: Translations.of(context).newNoteScreen.note_achived,
        actionText: Translations.of(context).undo,
        action: () {
          _deleteNoteBloc.add(UndoArchive());
        },
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
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
                BlocBuilder<NewNoteBloc, NewNoteState>(
                  bloc: _bloc,
                  builder: (context, state) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () {
                            _goBack(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: AppColorScheme.of(context).beige,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            _toggleNotePin();
                          },
                          icon: Icon(
                            (state.note.isPinned)
                                ? Icons.star
                                : Icons.star_outline,
                            color: AppColorScheme.of(context).beige,
                          ),
                        ),
                        if (state.note.id != null)
                          IconButton(
                            onPressed: () {
                              _archiveNote(context);
                            },
                            icon: Icon(
                              Icons.delete_outline_rounded,
                              color: AppColorScheme.of(context).beige,
                            ),
                          )
                      ],
                    );
                  },
                ),
                BlocBuilder<NewNoteBloc, NewNoteState>(
                  bloc: _bloc,
                  builder: (context, state) {
                    return CircleImage(
                      imageName: state.note.assetImage,
                    );
                  },
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
