import 'package:inscribe/core/i18n/strings.g.dart';

abstract class SharedPreferencesRepository {
  void setIsFirstRun(bool value);

  bool getIsFirstRun();

  void setIsGridPreferedView(bool value);

  bool getIsGridPreferedView();

  void setAppLocale(AppLocale value);

  String getLocaleCode();

  AppLocale getSavedAppLocale();
}
