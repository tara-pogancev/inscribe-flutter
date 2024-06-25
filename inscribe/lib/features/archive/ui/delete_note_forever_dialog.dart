import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';

class DeleteNoteForeversDialog extends StatelessWidget {
  const DeleteNoteForeversDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(Translations.of(context)
          .archivedNotes
          .delete_note_forever_dialog_title),
      content: Text(Translations.of(context)
          .archivedNotes
          .delete_note_forever_dialog_subtitle),
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
