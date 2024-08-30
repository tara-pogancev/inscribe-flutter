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
  String getLocaleLanguageCode() {
    return sharedPreferences.getString(settingsLocaleLanguageCode) ?? "en";
  }

  @override
  void setLocaleLanguageCode(String value) {
    sharedPreferences.setString(settingsLocaleLanguageCode, value);
  }

  @override
  String getLocaleScriptCode() {
    return sharedPreferences.getString(settingsLocaleScriptCode) ?? "";
  }

  @override
  void setLocaleScriptCode(String value) {
    sharedPreferences.setString(settingsLocaleScriptCode, value);
  }

  @override
  AppLocale getSavedAppLocale() {
    switch (getLocaleLanguageCode()) {
      case "sr":
        return AppLocale.srLatn;

      default:
        return AppLocale.en;
    }
  }
}
