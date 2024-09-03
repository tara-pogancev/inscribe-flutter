import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository_impl.dart';
import 'package:inscribe/core/data/repositories/notifications/notifications_repository.dart';
import 'package:inscribe/core/data/repositories/notifications/notifications_repository_impl.dart';
import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/data/repositories/shared_preferences/shared_preferences_repository_impl.dart';
import 'package:inscribe/core/presentation/bloc/delete_note_bloc/delete_note_bloc.dart';
import 'package:inscribe/features/archive/cubit/archive_cubit.dart';
import 'package:inscribe/features/calendar/cubit/calendar_cubit.dart';
import 'package:inscribe/features/home/bloc/home_bloc.dart';
import 'package:inscribe/features/note_details/bloc/note_details_bloc.dart';
import 'package:inscribe/features/scheduled_notifications_debug_view/cubit/scheduled_notifications_cubit.dart';
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

    // Set the router
    // getIt.registerLazySingleton<GoRouter>(() => AppRouter.router());

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
    getIt.registerLazySingleton(() => NoteDetailsBloc());
    getIt.registerLazySingleton(() => HomeBloc());
    getIt.registerLazySingleton(() => DeleteNoteBloc());
    getIt.registerLazySingleton(() => ArchiveCubit());
    getIt.registerLazySingleton(() => ScheduledNotificationsCubit());
    getIt.registerLazySingleton(() => CalendarCubit());
  }
}
