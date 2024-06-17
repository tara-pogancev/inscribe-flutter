import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/router/navigation_transitions.dart';
import 'package:inscribe/features/home/ui/home_screen.dart';
import 'package:inscribe/features/new_note/ui/new_note_screen.dart';
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
            pageBuilder: defaultPageBuilderWithState((state) =>
              NewNoteScreen(note: state.extra as Note),
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
