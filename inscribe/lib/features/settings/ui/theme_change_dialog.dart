import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/widgets/dialog_text.dart';

class ThemeChangeDialog extends StatelessWidget {
  const ThemeChangeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DialogText(Translations.of(context).settingsScreen.change_theme),
      content: DialogText(Translations.of(context)
          .settingsScreen
          .this_action_will_restart_the_app),
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
