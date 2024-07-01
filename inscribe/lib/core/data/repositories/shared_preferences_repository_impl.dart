import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

const isFirstRunSharedPreferences = "isFirstRun";
const isGridPreferedViewSharedPreferences = "isGridPreferedView";
const isDarkThemeSharedPreferences = "isDarkTheme";

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
  bool getIsGridPreferedView() {
    return sharedPreferences.getBool(isGridPreferedViewSharedPreferences) ??
        true;
  }

  @override
  void setIsGridPreferedView(bool value) {
    sharedPreferences.setBool(isGridPreferedViewSharedPreferences, value);
  }

  @override
  bool getIsDarkTheme() {
    return sharedPreferences.getBool(isDarkThemeSharedPreferences) ?? false;
  }

  @override
  void setIsDarkTheme(bool value) {
    sharedPreferences.setBool(isDarkThemeSharedPreferences, value);
  }
}
