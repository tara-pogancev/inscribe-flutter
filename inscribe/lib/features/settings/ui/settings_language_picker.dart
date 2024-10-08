import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_dropdown_form_field.dart';

class SettingsLanguagePicker extends StatelessWidget {
  const SettingsLanguagePicker({super.key});

  Map<AppLocale, String> _getLanguageValues(BuildContext context) {
    return Map<AppLocale, String>.from({
      AppLocale.en: "🇬🇧 English",
      AppLocale.es: "🇪🇸 Español",
      AppLocale.fr: "🇫🇷 Français",
      AppLocale.de: "🇩🇪 Deutsch",
      AppLocale.it: "🇮🇹 Italiano",
      AppLocale.ru: "🇷🇺 Русский",
      AppLocale.srLatn: "🇷🇸 Srpski",
      AppLocale.tr: "🇹🇷 Türkçe"
    });
  }

  void _setLocale(AppLocale locale, BuildContext context) async {
    LocaleSettings.setLocale(locale);
    IC.getIt<SharedPreferencesRepository>().setAppLocale(locale);
  }

  String? _getCurrentLocaleValue(BuildContext context) {
    return _getLanguageValues(context)[LocaleSettings.currentLocale];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultScreenPadding / 2),
      child: AppDropdownFormField(
        label: Translations.of(context).settingsScreen.language,
        items: _getLanguageValues(context).values.toList(),
        initialValue: _getCurrentLocaleValue(context),
        onChanged: (value) {
          final appLocale = _getLanguageValues(context)
              .entries
              .firstWhere((entry) => entry.value == value)
              .key;

          _setLocale(appLocale, context);
        },
      ),
    );
  }
}
