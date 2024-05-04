import 'package:flutter/material.dart';

class AppColorScheme {
  final Color black;
  final Color gray;
  final Color beige;
  final Color white;
  final Color red;

  BuildContext? context;

  AppColorScheme.of(this.context)
      : black = _getActiveScheme(context!).black,
        gray = _getActiveScheme(context).gray,
        beige = _getActiveScheme(context).beige,
        white = _getActiveScheme(context).white,
        red = _getActiveScheme(context).red;

  AppColorScheme(
      {required this.black,
      required this.gray,
      required this.beige,
      required this.white,
      required this.red});
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
    white: const Color(0xffFFFFFF),
    red: const Color(0xffde7878));

final _darkAppColorScheme = AppColorScheme(
    black: const Color(0xffFFFFFF),
    gray: const Color(0xffE5E2DD),
    beige: const Color(0xff282D33),
    white: const Color(0xff1A1D22),
    red: const Color(0xffde7878));
