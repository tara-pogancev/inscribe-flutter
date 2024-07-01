import 'package:flutter/material.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class NoArchivedNotesSection extends StatelessWidget {
  const NoArchivedNotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final assetImagePath =  "assets/images/empty_illustration_${context.getIsDarkTheme() ? 'dark' : 'light'}.png";

    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              assetImagePath,
              width: double.infinity,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              Translations.of(context).archivedNotes.no_archived_notes,
              style: AppTextStyles.of(context).boldTitle,
              textAlign: TextAlign.center,
            ),
            Text(
              Translations.of(context).archivedNotes.no_archived_notes_subtitle,
              style: AppTextStyles.of(context).defaultText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
