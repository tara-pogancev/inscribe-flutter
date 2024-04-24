import 'package:go_router/go_router.dart';
import 'package:inscribe/core/router/navigation_transitions.dart';
import 'package:inscribe/features/home/ui/home_screen.dart';
import 'package:inscribe/features/new_note/ui/new_note_screen.dart';
import 'package:inscribe/features/note_details/ui/note_details_screen.dart';
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
            pageBuilder: defaultPageBuilder(
              const NoteDetailsScreen(),
            ),
          ),
          GoRoute(
            path: Routes.newNote,
            pageBuilder: defaultPageBuilder(
              const NewNoteScreen(),
            ),
          )
        ],
        initialLocation: initialLocation ?? Routes.welcome,
      );
}

class Routes {
  static const home = '/home';
  static const welcome = '/welcome';
  static const noteDetails = '/note';
  static const newNote = '/new-note';
}
