import 'package:flutter/material.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';

class NoteRemindersPage extends StatefulWidget {
  const NoteRemindersPage({super.key});

  @override
  State<NoteRemindersPage> createState() => _NoteRemindersPageState();
}

class _NoteRemindersPageState extends State<NoteRemindersPage> {
  final _bloc = IC.getIt<NewNoteBloc>();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text("TODO"),
        ],
      ),
    );
  }
}
