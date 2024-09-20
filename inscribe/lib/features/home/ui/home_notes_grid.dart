import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/bloc/delete_note_bloc/delete_note_bloc.dart';
import 'package:inscribe/core/presentation/widgets/faded_edges_container.dart';
import 'package:inscribe/core/router/app_router.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';
import 'package:inscribe/features/home/ui/note_card.dart';
import 'package:inscribe/features/note_details/ui/dialog/archive_note_dialog.dart';

class HomeNotesGrid extends StatefulWidget {
  const HomeNotesGrid({super.key});

  @override
  State<HomeNotesGrid> createState() => _HomeNotesGridState();
}

class _HomeNotesGridState extends State<HomeNotesGrid> {
  final _bloc = IC.getIt<HomeBloc>();
  final _deleteNoteBloc = IC.getIt<DeleteNoteBloc>();

  Offset _tapPosition = const Offset(0, 0);

  void _navigateNote(note) async {
    await context.push(Routes.noteDetails, extra: note.id);
    _bloc.add(HomeFetchEvent());
  }

  void _switchNotePin(note) async {
    _bloc.add(SwitchNotePinEvent(note: note));
  }

  void _archiveNote(note) async {
    final shouldDelete = await showDialog(
        context: context,
        builder: (context) => ArchiveNoteDialog(
              note: note,
            )) as bool?;

    if (shouldDelete ?? false) {
      _deleteNoteBloc.add(ArchiveNote(note: note));
      context.showSnackbar(
          snackbarText: Translations.of(context).newNoteScreen.note_achived);
    }
  }

  void _getTapPosition(TapDownDetails tapPosition) {
    final RenderBox referenceBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = referenceBox.globalToLocal(tapPosition.globalPosition);
    });
  }

  void _showContextMenu(Note note) async {
    final RenderBox? overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox?;

    if (overlay != null) {
      await showMenu(
        context: context,
        position: RelativeRect.fromRect(
          Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 100, 100),
          Rect.fromLTWH(0, 0, overlay.paintBounds.size.width,
              overlay.paintBounds.size.height),
        ),
        items: <PopupMenuItem>[
          PopupMenuItem(
            child: Text((note.isPinned)
                ? Translations.of(context).homeScreen.unpin_note
                : Translations.of(context).homeScreen.pin_note),
            onTap: () => _switchNotePin(note),
          ),
          PopupMenuItem(
            child: Text(Translations.of(context).newNoteScreen.archive_note),
            onTap: () => _archiveNote(note),
          ),
        ],
      );
    }
  }

  double _getScrollViewHeight(BuildContext context) {
    return (MediaQuery.of(context).size.height) - appBarPreferedSize;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _bloc,
      builder: (context, state) {
        return SizedBox(
          height: _getScrollViewHeight(context),
          child: FadedEdgesContainer(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: gradientHeight,
                  ),
                ),
                getGridForNotes(state.filteredPinnedNotes,
                    state.filteredOtherdNotes, state.isGridView),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: gradientHeight,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget getGridForNotes(
      List<Note> pinnedNotes, List<Note> notes, bool isGridView) {
    return SliverMasonryGrid.count(
      crossAxisCount: (isGridView) ? 2 : 1,
      crossAxisSpacing: 15,
      mainAxisSpacing: 10,
      childCount: notes.length + pinnedNotes.length + 2,
      itemBuilder: (context, index) {
        // 1. PINNED NOTES TITLE
        if (index == 0) {
          return (pinnedNotes.isNotEmpty)
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    Translations.of(context).homeScreen.pinned,
                    style: AppTextStyles.of(context).homeTitle,
                  ),
                )
              : Container();
        } else if (1 <= index && index <= pinnedNotes.length) {
          // 2. PINNED NOTES CARD
          final note = pinnedNotes[index - 1];
          return GestureDetector(
            onTapDown: (TapDownDetails tapDownDetails) {
              _getTapPosition(tapDownDetails);
            },
            onLongPress: () {
              HapticFeedback.mediumImpact();
              _showContextMenu(note);
            },
            child: NoteCard(
              note: note,
              onClick: () {
                _navigateNote(note);
              },
            ),
          );
        } else if (index == pinnedNotes.length + 1) {
          // 3. OTHER NOTES TITLE
          return (notes.isNotEmpty)
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    Translations.of(context).homeScreen.other,
                    style: AppTextStyles.of(context).homeTitle,
                  ),
                )
              : Container();
        } else {
          // 4. OTHER NOTES CARD
          final note = notes[(index - 2 - pinnedNotes.length)];
          return GestureDetector(
            onTapDown: (TapDownDetails tapDownDetails) {
              _getTapPosition(tapDownDetails);
            },
            onLongPress: () {
              HapticFeedback.mediumImpact();
              _showContextMenu(note);
            },
            child: NoteCard(
              note: note,
              onClick: () {
                _navigateNote(note);
              },
            ),
          );
        }
      },
    );
  }
}
