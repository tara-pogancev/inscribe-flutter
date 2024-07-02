import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/widgets/dialog_text.dart';

class UnsavedChangesDialog extends StatelessWidget {
  const UnsavedChangesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DialogText(Translations.of(context).newNoteScreen.unsaved_changes),
      content: DialogText(
          Translations.of(context).newNoteScreen.save_changes_description),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(Translations.of(context).newNoteScreen.discard),
        ),
        FilledButton(
          onPressed: () => context.pop(true),
          child: Text(Translations.of(context).newNoteScreen.save),
        )
      ],
    );
  }
}
