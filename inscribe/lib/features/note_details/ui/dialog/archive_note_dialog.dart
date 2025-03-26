import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/dialog_text.dart';

class ArchiveNoteDialog extends StatelessWidget {
  const ArchiveNoteDialog({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
       backgroundColor: AppColorScheme.of(context).beige,
      title: DialogText(Translations.of(context).newNoteScreen.archive_note),
      content: DialogText(
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
