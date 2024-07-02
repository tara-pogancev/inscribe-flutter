import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/bloc/delete_note_bloc/delete_note_bloc.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/ui/circle_image.dart';
import 'package:inscribe/features/new_note/ui/dialog/archive_note_dialog.dart';
import 'package:inscribe/features/new_note/ui/note_name_text_field.dart';

class NewNoteHeader extends StatefulWidget {
  NewNoteHeader({super.key, required this.onBack});

  final Function() onBack;

  @override
  State<NewNoteHeader> createState() => _NewNoteHeaderState();
}

class _NewNoteHeaderState extends State<NewNoteHeader> {
  final _bloc = IC.getIt<NewNoteBloc>();

  final _deleteNoteBloc = IC.getIt<DeleteNoteBloc>();

  final double minHeight =
      newNoteAppBarExpandedHeight * 0.5; // Minimum height for fade effect

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
    return LayoutBuilder(builder: (context, constraints) {
      final isVisible = constraints.maxHeight >= minHeight;
      return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wave_profile_cover.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
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
                          onPressed: () => widget.onBack(),
                          icon: Icon(
                            Icons.arrow_back,
                            color: lightAppColorScheme.beige,
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
                            color: lightAppColorScheme.beige,
                          ),
                        ),
                        if (state.note.id != null)
                          IconButton(
                            onPressed: () {
                              _archiveNote(context);
                            },
                            icon: Icon(
                              Icons.delete_outline_rounded,
                              color: lightAppColorScheme.beige,
                            ),
                          )
                      ],
                    );
                  },
                ),
                AnimatedOpacity(
                  opacity: isVisible ? 1.0 : 0.0,
                  duration: Durations.long1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BlocBuilder<NewNoteBloc, NewNoteState>(
                        bloc: _bloc,
                        builder: (context, state) {
                          return CircleImage(note: state.note);
                        },
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        child: NoteNameTextField(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
