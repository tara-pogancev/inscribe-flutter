import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';

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
}
