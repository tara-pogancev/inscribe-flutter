import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IC {
  static final getIt = GetIt.instance;

  static Future<void> setUp() async {
    // getIt.registerLazySingleton(() => ErrorBloc());

    // Set up datasources.
    getIt.registerLazySingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance(),
    );
    await getIt.isReady<SharedPreferences>();
  }
}
