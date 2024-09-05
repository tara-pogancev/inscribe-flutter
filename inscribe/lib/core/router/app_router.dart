import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/router/navigation_transitions.dart';
import 'package:inscribe/features/archive/ui/archive_screen.dart';
import 'package:inscribe/features/calendar/ui/calendar_screen.dart';
import 'package:inscribe/features/home/ui/home_screen.dart';
import 'package:inscribe/features/note_details/ui/note_details_screen.dart';
import 'package:inscribe/features/scheduled_notifications_debug_view/scheduled_notifications_screen.dart';
import 'package:inscribe/features/settings/ui/settings_screen.dart';
import 'package:inscribe/features/welcome/ui/welcome_screen.dart';

class AppRouter {
  static GoRouter router([String? initialLocation]) => GoRouter(
        routes: [
          GoRoute(
            path: Routes.home,
            pageBuilder: defaultPageBuilder(
              const HomeScreen(),
            ),
          ),
          GoRoute(
            path: Routes.welcome,
            pageBuilder: defaultPageBuilder(
              const WelcomeScreen(),
            ),
          ),
          GoRoute(
            path: Routes.noteDetails,
            pageBuilder: defaultPageBuilderWithState(
              (state) => NoteDetailsScreen(noteId: state.extra as String),
            ),
          ),
          GoRoute(
            path: Routes.newNote,
            pageBuilder: defaultPageBuilder(
              const NoteDetailsScreen(),
            ),
          ),
          GoRoute(
            path: Routes.archive,
            pageBuilder: defaultPageBuilder(
              const ArchiveScreen(),
            ),
          ),
          GoRoute(
            path: Routes.settings,
            pageBuilder: defaultPageBuilder(
              const SettingsScreen(),
            ),
          ),
          GoRoute(
            path: Routes.notifications,
            pageBuilder: defaultPageBuilder(
              const ScheduledNotificationsScreen(),
            ),
          ),
          GoRoute(
            path: Routes.calendar,
            pageBuilder: defaultPageBuilder(
              const CalendarScreen(),
            ),
          ),
        ],
        redirect: (context, state) {
          bool isFirstRun =
              IC.getIt<SharedPreferencesRepository>().getIsFirstRun();
          if (isFirstRun) {
            return Routes.welcome;
          }

          return null;
        },
        initialLocation: initialLocation ?? Routes.home,
      );
}

class Routes {
  static const home = '/home';
  static const welcome = '/welcome';
  static const noteDetails = '/note';
  static const newNote = '/new-note';
  static const archive = '/archive';
  static const settings = '/settings';
  static const calendar = '/calendar';
  static const notifications = '/notifications';
}
