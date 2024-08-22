import 'package:go_router/go_router.dart';

extension RouterExtensions on GoRouter {
  void popUntil(String route) {
    while (getCurrentRoute() != route) {
      if (!canPop()) {
        return;
      }

      pop();
    }
  }

  String getCurrentRoute() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  void popUntilAndPush(
      {required String popUntil, required String push, Object? extra}) {
    this.popUntil(popUntil);
    this.push(push, extra: extra);
  }
}
