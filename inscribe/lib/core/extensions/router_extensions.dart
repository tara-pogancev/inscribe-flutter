import 'package:go_router/go_router.dart';

extension RouterExtensions on GoRouter {
  String getCurrentRoute() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  void popUntil(String route) {
    while (getCurrentRoute() != route) {
      if (!canPop()) {
        return;
      }

      pop();
    }
  }

  void popUntilAndPush(
      {required String popUntil, required String push, Object? extra}) {
    this.popUntil(popUntil);
    this.push(push, extra: extra);
  }

  void popUntilOrPush(String route) {
    popUntil(route);
    if (getCurrentRoute() != route) {
      push(route);
    }
  }
}
