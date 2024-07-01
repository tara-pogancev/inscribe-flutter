import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/widgets/dialog_text.dart';

class DeleteAllNotesForeversDialog extends StatelessWidget {
  const DeleteAllNotesForeversDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DialogText(Translations.of(context)
          .archivedNotes
          .delete_all_notes_forever_dialog_title),
      content: DialogText(Translations.of(context)
          .archivedNotes
          .delete_all_notes_forever_dialog_subtitle),
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
