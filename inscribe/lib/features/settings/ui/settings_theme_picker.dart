import 'package:colorist/colorist.dart';
import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class SettingsThemePicker extends StatefulWidget {
  const SettingsThemePicker({super.key});

  @override
  State<SettingsThemePicker> createState() => _SettingsThemePickerState();
}

class _SettingsThemePickerState extends State<SettingsThemePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultScreenPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Translations.of(context).settingsScreen.use_dark_theme,
                  style: AppTextStyles.of(context).settingsTitle,
                ),
                Text(
                  Translations.of(
                    context,
                  ).settingsScreen.dark_theme_description,
                  style: AppTextStyles.of(context).settingsSubtitle,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Switch(
            value: context.isDarkMode,
            onChanged: (value) {
              if (value) {
                context.themeManager.setBrightness(ThemeBrightness.dark);
              } else {
                context.themeManager.setBrightness(ThemeBrightness.light);
              }
            },
          ),
        ],
      ),
    );
  }
}
