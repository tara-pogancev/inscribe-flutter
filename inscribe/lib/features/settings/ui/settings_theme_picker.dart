import 'package:colorist/colorist.dart';
import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class SettingsThemePicker extends StatefulWidget {
  const SettingsThemePicker({super.key});

  @override
  State<SettingsThemePicker> createState() => _SettingsThemePickerState();
}

class _SettingsThemePickerState extends State<SettingsThemePicker> {
  Map<InscribeColorTheme, String> get themeNames => {
    inscribeAppThemes[0]: context.t.appColorThemes.defaultLight,
    inscribeAppThemes[1]: context.t.appColorThemes.defaultDark,
    inscribeAppThemes[2]: context.t.appColorThemes.strawberryPink,
    inscribeAppThemes[3]: context.t.appColorThemes.forestGreen,
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultScreenPadding / 2),
      child: Padding(
        padding: const EdgeInsets.only(bottom: formFieldBottomPadding),
        child: DropdownButtonFormField<InscribeColorTheme>(
          isExpanded: true,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          items: inscribeAppThemes
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    themeNames[e]!,
                    style: AppTextStyles.of(context).defaultText,
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value == null) return;

            context.themeManager.setTheme(value);
          },
          initialValue: context.themeManager.currentTheme as InscribeColorTheme,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              borderSide: BorderSide(color: context.colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              borderSide: BorderSide(color: context.colors.black),
            ),
            label: Text(
              context.t.settingsScreen.select_theme,
              style: AppTextStyles.of(context).grayFormLabel,
            ),
          ),
        ),
      ),
    );
  }
}
