import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static const int Light = 0;
  static const int Dark = 1;
}

ThemeCollection getThemeCollection(BuildContext context) => ThemeCollection(
      themes: {
        AppThemes.Light: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
            textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
            useMaterial3: true,
            brightness: Brightness.light),
        AppThemes.Dark: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.grey, brightness: Brightness.dark),
            textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
            useMaterial3: true,
            brightness: Brightness.dark),
      },
      fallbackTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          useMaterial3: true,
          brightness: Brightness.light),
    );

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
  final Brightness brightness =
      DynamicTheme.of(context)?.theme.brightness ?? Brightness.light;
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
