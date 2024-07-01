import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/features/settings/ui/theme_change_dialog.dart';

class SettingsThemePicker extends StatefulWidget {
  const SettingsThemePicker({super.key});

  @override
  State<SettingsThemePicker> createState() => _SettingsThemePickerState();
}

class _SettingsThemePickerState extends State<SettingsThemePicker> {
  bool isDarkTheme = false;

  void _setIsDarkTheme(BuildContext context, bool isDarkTheme) async {
    final shouldChangeTheme = await showDialog(
        context: context, builder: (context) => ThemeChangeDialog()) as bool?;

    if (shouldChangeTheme ?? false) {
      DynamicTheme.of(context)
          ?.setTheme(isDarkTheme ? AppThemes.Dark : AppThemes.Light);

      setState(() {
        isDarkTheme = isDarkTheme;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      isDarkTheme = getIsDarkTheme();
    });
  }

  bool getIsDarkTheme() {
    return context.getIsDarkTheme();
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
              value: isDarkTheme,
              onChanged: (value) {
                _setIsDarkTheme(context, value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
