import 'package:get_it/get_it.dart';
import 'package:inscribe/core/data/repositories/shared_preferences_repository_impl.dart';
import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/welcome/bloc/welcome_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IC {
  static final getIt = GetIt.instance;

  static Future<void> setUp() async {
    getIt.registerLazySingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance(),
    );
    await getIt.isReady<SharedPreferences>();

    // Setup repositories
    getIt.registerLazySingleton<SharedPreferencesRepository>(
        () => SharedPreferencesRepositoryImpl(sharedPreferences: getIt()));

    // Setup bloc
    getIt.registerLazySingleton(() => WelcomeBloc());

    getIt.registerLazySingleton(() => NewNoteBloc());
  }
}
