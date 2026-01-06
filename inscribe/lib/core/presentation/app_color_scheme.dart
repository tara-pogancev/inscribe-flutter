import 'package:colorist/colorist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_color_scheme.colorist.g.dart';

@ColorTheme()
abstract class InscribeColorTheme with _$InscribeColorTheme {
  const factory InscribeColorTheme({
    required Color primary,
    required Brightness brightness,
    required Color black,
    required Color gray,
    required Color beige,
    required Color white,
    required Color red,
    required Color mediumGray,
  }) = _InscribeColorTheme;

  @override
  ThemeData get themeData => _getColoristThemeData(this);
}

ThemeData _getColoristThemeData(InscribeColorTheme theme) {
  return ThemeData(
    brightness: theme.brightness,
    colorSchemeSeed: theme.primary,
    textTheme: GoogleFonts.montserratTextTheme(),
    extensions: [theme.themeExtension],
    buttonTheme: const ButtonThemeData(alignedDropdown: true),
  );
}

final lightAppColorScheme = InscribeColorTheme(
  brightness: Brightness.light,
  primary: const Color.fromARGB(255, 187, 187, 187),
  black: const Color(0xff1A1D22),
  gray: const Color(0xff282D33),
  beige: const Color.fromRGBO(229, 226, 221, 1),
  white: const Color(0xffFFFFFF),
  red: const Color(0xffde7878),
  mediumGray: const Color(0xFF515C69),
);

final _darkAppColorScheme = InscribeColorTheme(
  brightness: Brightness.dark,
  primary: const Color.fromARGB(255, 76, 83, 91),
  black: const Color(0xffFFFFFF),
  gray: const Color(0xffE5E2DD),
  beige: const Color(0xff282D33),
  white: const Color(0xff1A1D22),
  red: const Color(0xffde7878),
  mediumGray: const Color(0xFF65625D),
);

final _lightPink = InscribeColorTheme(
  brightness: Brightness.light,
  primary: const Color.fromARGB(255, 255, 171, 165),
  black: const Color.fromARGB(255, 40, 29, 29),
  gray: const Color.fromARGB(255, 51, 40, 40),
  beige: const Color.fromARGB(255, 243, 232, 232),
  white: const Color(0xffFFFFFF),
  red: const Color.fromARGB(255, 182, 72, 72),
  mediumGray: const Color.fromARGB(255, 105, 81, 85),
);

final _darkGreen = InscribeColorTheme(
  brightness: Brightness.dark,
  primary: const Color.fromARGB(255, 84, 91, 76),
  black: const Color.fromARGB(255, 255, 255, 255),
  gray: const Color.fromARGB(255, 226, 229, 221),
  beige: const Color.fromARGB(255, 40, 51, 45),
  white: const Color.fromARGB(255, 28, 34, 26),
  red: const Color.fromARGB(255, 235, 152, 136),
  mediumGray: const Color.fromARGB(255, 94, 101, 93),
);

final inscribeAppThemes = <InscribeColorTheme>[
  lightAppColorScheme,
  _darkAppColorScheme,
  _lightPink,
  _darkGreen,
];
