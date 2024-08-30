import 'package:inscribe/core/i18n/strings.g.dart';

abstract class SharedPreferencesRepository {
  void setIsFirstRun(bool value);

  bool getIsFirstRun();

  void setIsGridPreferedView(bool value);

  bool getIsGridPreferedView();

  void setLocaleLanguageCode(String value);

  String getLocaleLanguageCode();

  void setLocaleScriptCode(String value);

  String getLocaleScriptCode();

  AppLocale getSavedAppLocale();
}
