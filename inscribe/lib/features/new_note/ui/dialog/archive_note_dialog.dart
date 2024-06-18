import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/i18n/strings.g.dart';

class ArchiveNoteDialog extends StatelessWidget {
  const ArchiveNoteDialog({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(Translations.of(context).newNoteScreen.archive_note),
      content: Text(
        Translations.of(context)
            .newNoteScreen
            .archive_note_are_you_sure(name: note.name),
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(Translations.of(context).cancel),
        ),
        FilledButton(
          onPressed: () => context.pop(true),
          child: Text(Translations.of(context).confirm),
        )
      ],
    );
  }
}
