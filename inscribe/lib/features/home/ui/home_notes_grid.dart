import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/faded_edges_container.dart';
import 'package:inscribe/core/router/app_router.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';
import 'package:inscribe/features/home/ui/note_card.dart';

class HomeNotesGrid extends StatefulWidget {
  const HomeNotesGrid({super.key});

  @override
  State<HomeNotesGrid> createState() => _HomeNotesGridState();
}

class _HomeNotesGridState extends State<HomeNotesGrid> {
  final _bloc = IC.getIt<HomeBloc>();

  void _navigateNote(note) async {
    await context.push(Routes.noteDetails, extra: note);
    _bloc.add(HomeFetchEvent());
  }

  double _getScrollViewHeight(BuildContext context) {
    return (MediaQuery.of(context).size.height) - 70;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _bloc,
      builder: (context, state) {
        return Container(
          height: _getScrollViewHeight(context),
          child: FadedEdgesContainer(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: gradientHeight,
                  ),
                ),
                if (state.filteredPinnedNotes.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        Translations.of(context).homeScreen.pinned,
                        style: AppTextStyles.of(context).homeTitle,
                      ),
                    ),
                  ),
                if (state.filteredPinnedNotes.isNotEmpty)
                  getGridForNotes(state.filteredPinnedNotes, state.isGridView),
                if (state.filteredPinnedNotes.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 10),
                      child: Text(
                        Translations.of(context).homeScreen.other,
                        style: AppTextStyles.of(context).homeTitle,
                      ),
                    ),
                  ),
                getGridForNotes(state.filteredOtherdNotes, state.isGridView)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget getGridForNotes(List<Note> notes, bool isGridView) {
    return SliverMasonryGrid.count(
      crossAxisCount: (isGridView) ? 2 : 1,
      crossAxisSpacing: 15,
      mainAxisSpacing: 10,
      childCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteCard(
          note: note,
          onClick: () {
            _navigateNote(note);
          },
        );
      },
    );
  }
}
