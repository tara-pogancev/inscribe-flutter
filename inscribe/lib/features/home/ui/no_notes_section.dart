import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_button_styles.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/router/app_router.dart';

class NoNotesSection extends StatelessWidget {
  const NoNotesSection({super.key});

  void _navigateNewNote(BuildContext context) {
    context.push(Routes.newNote);
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/empty_illustration.png",
              width: double.infinity,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              Translations.of(context).homeScreen.no_notes_title,
              style: AppTextStyles.of(context).boldTitle,
              textAlign: TextAlign.center,
            ),
            Text(
              Translations.of(context).homeScreen.no_notes_subtitle,
              style: AppTextStyles.of(context).defaultText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                text: Translations.of(context).homeScreen.add_note,
                style: AppButtonStyles.of(context).black,
                onPressed: () {
                  _navigateNewNote(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
