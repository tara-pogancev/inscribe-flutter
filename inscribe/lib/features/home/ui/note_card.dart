import 'package:flutter/material.dart';
import 'package:inscribe/core/data/model/note/note.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note, required this.onClick});

  final Note note;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Text(note.name);
  }
}
