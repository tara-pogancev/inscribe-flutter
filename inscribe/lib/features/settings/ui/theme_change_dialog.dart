import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/dialog_text.dart';

class ChangeWillRestartTheAppDialog extends StatelessWidget {
  const ChangeWillRestartTheAppDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColorScheme.of(context).beige,
      title: DialogText(Translations.of(context).settingsScreen.apply_change),
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
