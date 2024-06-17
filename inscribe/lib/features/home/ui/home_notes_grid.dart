import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _bloc,
      builder: (context, state) {
        return ListView(children: [
          if (state.filteredPinnedNotes.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                Translations.of(context).homeScreen.pinned,
                style: AppTextStyles.of(context).homeTitle,
              ),
            ),
          if (state.filteredPinnedNotes.isNotEmpty)
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.4),
              itemCount: state.filteredPinnedNotes.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final note = state.filteredPinnedNotes[index];
                return NoteCard(
                  note: note,
                  onClick: () {
                    _navigateNote(note);
                  },
                );
              },
            ),
          if (state.filteredPinnedNotes.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                Translations.of(context).homeScreen.other,
                style: AppTextStyles.of(context).homeTitle,
              ),
            ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
                childAspectRatio: 1.1),
            itemCount: state.filteredOtherdNotes.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final note = state.filteredOtherdNotes[index];
              return NoteCard(
                note: note,
                onClick: () {
                  _navigateNote(note);
                },
              );
            },
          ),
        ]);
      },
    );
  }
}
