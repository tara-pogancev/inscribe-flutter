import 'package:flutter/material.dart';

class AppColorScheme {
  final Color? black;
  final Color? gray;
  final Color? beige;
  final Color? white;

  BuildContext? context;

  AppColorScheme.of(this.context)
      : black = _getActiveScheme(context!).black,
        gray = _getActiveScheme(context).gray,
        beige = _getActiveScheme(context).beige,
        white = _getActiveScheme(context).white;

  AppColorScheme(
      {required this.black,
      required this.gray,
      required this.beige,
      required this.white});
}

AppColorScheme _getActiveScheme(BuildContext context) {
  final Brightness brightness = Theme.of(context).brightness;
  return brightness == Brightness.light
      ? _lightAppColorScheme
      : _darkAppColorScheme;
}

final _lightAppColorScheme = AppColorScheme(
    black: const Color(0xff1A1D22),
    gray: const Color(0xff282D33),
    beige: const Color(0xffE5E2DD),
    white: const Color(0xffFFFFFF));

final _darkAppColorScheme = AppColorScheme(
    black: const Color(0xffFFFFFF),
    gray: const Color(0xffE5E2DD),
    beige: const Color(0xff282D33),
    white: const Color(0xff1A1D22));
