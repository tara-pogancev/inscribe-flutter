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
  );
}

final lightAppColorScheme = InscribeColorTheme(
  brightness: Brightness.light,
  primary: const Color.fromARGB(255, 187, 187, 187),
  black: const Color(0xff1A1D22),
  gray: const Color(0xff282D33),
  beige: const Color(0xffE5E2DD),
  white: const Color(0xffFFFFFF),
  red: const Color(0xffde7878),
  mediumGray: const Color(0xFF515C69),
);

final darkAppColorScheme = InscribeColorTheme(
  brightness: Brightness.dark,
  primary: const Color.fromARGB(255, 76, 83, 91),
  black: const Color(0xffFFFFFF),
  gray: const Color(0xffE5E2DD),
  beige: const Color(0xff282D33),
  white: const Color(0xff1A1D22),
  red: const Color(0xffde7878),
  mediumGray: const Color(0xFF65625D),
);
