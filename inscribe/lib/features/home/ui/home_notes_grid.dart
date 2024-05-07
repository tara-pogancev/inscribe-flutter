import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/injection_container.dart';
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

  void _navigateNote(note) {
    context.push(Routes.newNote);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _bloc,
      builder: (context, state) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
          itemCount: state.filteredNotes.length,
          itemBuilder: (context, index) {
            final note = state.filteredNotes[index];
            return NoteCard(
              note: note,
              onClick: () {
                _navigateNote(note);
              },
            );
          },
        );
      },
    );
  }
}
