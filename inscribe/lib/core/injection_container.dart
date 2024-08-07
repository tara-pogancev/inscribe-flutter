import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:inscribe/core/data/repositories/notes_repository_impl.dart';
import 'package:inscribe/core/data/repositories/notifications_repository_impl.dart';
import 'package:inscribe/core/data/repositories/shared_preferences_repository_impl.dart';
import 'package:inscribe/core/domain/repositories/notes_repository.dart';
import 'package:inscribe/core/domain/repositories/notifications_repository.dart';
import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:inscribe/core/presentation/bloc/delete_note_bloc/delete_note_bloc.dart';
import 'package:inscribe/features/archive/cubit/archive_cubit.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/welcome/bloc/welcome_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

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

    getIt.registerLazySingleton<NotificationsRepository>(() {
      return NotificationsRepositoryImpl(
          awesomeNotifications: AwesomeNotifications());
    });

    getIt.registerLazySingleton<NotesRepository>(() {
      final notesBox = Hive.box(hiveNotesBox);
      final remindersBox = Hive.box(hiveRemindersBox);
      return NotesRepositoryImpl(
          notesBox: notesBox,
          remindersBox: remindersBox,
          notificationsRepository: getIt());
    });

    getIt.registerLazySingleton(() => const Uuid());

    // Setup bloc
    getIt.registerLazySingleton(() => WelcomeBloc());
    getIt.registerLazySingleton(() => NewNoteBloc());
    getIt.registerLazySingleton(() => HomeBloc());
    getIt.registerLazySingleton(() => DeleteNoteBloc());
    getIt.registerLazySingleton(() => ArchiveCubit());
  }
}
