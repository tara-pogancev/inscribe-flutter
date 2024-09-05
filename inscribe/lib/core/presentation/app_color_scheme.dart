import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';

final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
    textTheme: GoogleFonts.montserratTextTheme(),
    useMaterial3: true,
    brightness: Brightness.light);

final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.grey, brightness: Brightness.dark),
    textTheme: GoogleFonts.montserratTextTheme(),
    useMaterial3: true,
    brightness: Brightness.dark);

class AppColorScheme {
  final Color black;
  final Color gray;
  final Color beige;
  final Color white;
  final Color red;
  final Color mediumGray;

  BuildContext? context;

  AppColorScheme.of(this.context)
      : black = _getActiveScheme(context!).black,
        gray = _getActiveScheme(context).gray,
        beige = _getActiveScheme(context).beige,
        white = _getActiveScheme(context).white,
        red = _getActiveScheme(context).red,
        mediumGray = _getActiveScheme(context).mediumGray;

  AppColorScheme(
      {required this.black,
      required this.gray,
      required this.beige,
      required this.white,
      required this.red,
      required this.mediumGray});
}

AppColorScheme _getActiveScheme(BuildContext context) {
  return context.getIsLightTheme()
      ? lightAppColorScheme
      : darkAppColorScheme;
}

final lightAppColorScheme = AppColorScheme(
    black: const Color(0xff1A1D22),
    gray: const Color(0xff282D33),
    beige: const Color(0xffE5E2DD),
    white: const Color(0xffFFFFFF),
    red: const Color(0xffde7878),
    mediumGray: const Color.fromARGB(255, 81, 92, 105));

final darkAppColorScheme = AppColorScheme(
    black: const Color(0xffFFFFFF),
    gray: const Color(0xffE5E2DD),
    beige: const Color(0xff282D33),
    white: const Color(0xff1A1D22),
    red: const Color(0xffde7878),
    mediumGray: const Color.fromARGB(255, 101, 98, 93));
