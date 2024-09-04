import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

const isFirstRunSharedPreferences = "isFirstRun";
const isGridPreferedViewSharedPreferences = "isGridPreferedView";
const isDarkThemeSharedPreferences = "isDarkTheme";
const settingsLocaleLanguageCode = "settingsLocaleLanguageCode";
const settingsLocaleScriptCode = "settingsLocaleScriptCode";

class SharedPreferencesRepositoryImpl implements SharedPreferencesRepository {
  final SharedPreferences sharedPreferences;

  SharedPreferencesRepositoryImpl({
    required this.sharedPreferences,
  });

  @override
  bool getIsFirstRun() {
    return sharedPreferences.getBool(isFirstRunSharedPreferences) ?? true;
  }

  @override
  void setIsFirstRun(bool value) {
    sharedPreferences.setBool(isFirstRunSharedPreferences, value);
  }

  @override
  void setIsGridPreferedView(bool value) {
    sharedPreferences.setBool(isGridPreferedViewSharedPreferences, value);
  }

  @override
  bool getIsGridPreferedView() {
    return sharedPreferences.getBool(isGridPreferedViewSharedPreferences) ??
        true;
  }

  @override
  void setAppLocale(AppLocale value) {
    sharedPreferences.setString(settingsLocaleLanguageCode, value.languageCode);
    sharedPreferences.setString(
        settingsLocaleScriptCode, value.scriptCode ?? "");
  }

  @override
  AppLocale? getSavedAppLocale() {
    switch (getLocaleCode()) {
      case null:
        return null;

      case "en":
        return AppLocale.en;

      default:
        return AppLocale.srLatn;
    }
  }

  @override
  String? getLocaleCode() {
    final languageCode =
        sharedPreferences.getString(settingsLocaleLanguageCode) ?? "";
    final scriptCode =
        sharedPreferences.getString(settingsLocaleScriptCode) ?? "";

    if (languageCode.isEmpty) {
      return null;
    } else if (scriptCode.isEmpty) {
      return languageCode;
    } else {
      return "$languageCode-$scriptCode";
    }
  }
}
