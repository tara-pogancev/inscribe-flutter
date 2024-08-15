import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension ContextExtensions on BuildContext {
  void showSnackbar(
      {required snackbarText,
      String? actionText,
      Function? action,
      bool clearSnackbars = true}) {
    if (clearSnackbars) {
      ScaffoldMessenger.of(this).clearSnackBars();
    }

    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(snackbarText),
      action: (actionText != null && action != null)
          ? SnackBarAction(label: actionText, onPressed: () => action())
          : null,
    ));
  }

  double getScreenHeight() {
    return MediaQuery.of(this).size.height;
  }

  double getScreenWidth() {
    return MediaQuery.of(this).size.width;
  }

  bool getIsDarkTheme() {
    final Brightness brightness =
        DynamicTheme.of(this)?.theme.brightness ?? Brightness.light;
    return brightness == Brightness.dark;
  }

  bool getIsLightTheme() {
    final Brightness brightness =
        DynamicTheme.of(this)?.theme.brightness ?? Brightness.light;
    return brightness == Brightness.light;
  }

  void popUntil(String route) {
    final router = GoRouter.of(this);
    while (getCurrentRoute() != route) {
      if (!router.canPop()) {
        return;
      }

      router.pop();
    }
  }

  String getCurrentRoute() {
    final RouteMatch lastMatch =
        GoRouter.of(this).routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : GoRouter.of(this).routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  void popUntilAndPush(
      {required String popUntil, required String push, Object? extra}) {
    this.popUntil(popUntil);
    this.push(push, extra: extra);
  }
}
