import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class SettingsThemePicker extends StatelessWidget {
  const SettingsThemePicker({super.key});

  Map<bool, String> _getThemeValues(BuildContext context) {
    return Map<bool, String>.from({
      true: Translations.of(context).settingsScreen.light,
      false: Translations.of(context).settingsScreen.dark
    });
  }

  void _setIsLightTheme(bool isLightTheme) {
    // isLightTheme
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultScreenPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Translations.of(context).settingsScreen.use_dark_theme,
                style: AppTextStyles.of(context).settingsTitle,
              ),
              Text(
                Translations.of(context).settingsScreen.dark_theme_description,
                style: AppTextStyles.of(context).settingsSubtitle,
              ),
            ],
          ),
          Flexible(
            child: Switch(
              value: true,
              onChanged: (value) {
                _setIsLightTheme(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
