// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'app_color_scheme.dart';

// **************************************************************************
// ColoristThemeGenerator
// **************************************************************************

// **************************************************************************
// InscribeColorTheme implementation
// **************************************************************************

/// @nodoc
@immutable
mixin _$InscribeColorTheme implements ColorThemeSchema {
  // Custom theme colors
  Color get beige;
  Color get black;
  Color get gray;
  Color get mediumGray;
  Color get primary;
  Color get red;
  Color get white;
}

/// @nodoc
@immutable
class _InscribeColorTheme implements InscribeColorTheme {
  @override
  final Color beige;
  @override
  final Color black;
  @override
  final Color gray;
  @override
  final Color mediumGray;
  @override
  final Color primary;
  @override
  final Color red;
  @override
  final Color white;

  const _InscribeColorTheme({
    required this.brightness,
    required this.beige,
    required this.black,
    required this.gray,
    required this.mediumGray,
    required this.primary,
    required this.red,
    required this.white,
  });

  @override
  final Brightness brightness;

  @override
  ThemeExtension get themeExtension => InscribeColorThemeExtension(
    beige: beige,
    black: black,
    gray: gray,
    mediumGray: mediumGray,
    primary: primary,
    red: red,
    white: white,
  );

  ThemeData get themeData => _getColoristThemeData(this);

  CupertinoThemeData? get cupertinoThemeData => null;
}

// **************************************************************************
// ThemeExtension adapter for Material integration
// **************************************************************************

@immutable
class InscribeColorThemeExtension
    extends ThemeExtension<InscribeColorThemeExtension> {
  // Custom theme colors
  final Color beige;
  final Color black;
  final Color gray;
  final Color mediumGray;
  final Color primary;
  final Color red;
  final Color white;

  const InscribeColorThemeExtension({
    required this.beige,
    required this.black,
    required this.gray,
    required this.mediumGray,
    required this.primary,
    required this.red,
    required this.white,
  });

  @override
  InscribeColorThemeExtension copyWith({InscribeColorTheme? data}) =>
      InscribeColorThemeExtension(
        beige: data?.beige ?? beige,
        black: data?.black ?? black,
        gray: data?.gray ?? gray,
        mediumGray: data?.mediumGray ?? mediumGray,
        primary: data?.primary ?? primary,
        red: data?.red ?? red,
        white: data?.white ?? white,
      );

  @override
  InscribeColorThemeExtension lerp(
    covariant ThemeExtension<InscribeColorThemeExtension>? other,
    double t,
  ) {
    if (other is! InscribeColorThemeExtension) {
      return this;
    }
    return InscribeColorThemeExtension(
      beige: Color.lerp(beige, other.beige, t)!,
      black: Color.lerp(black, other.black, t)!,
      gray: Color.lerp(gray, other.gray, t)!,
      mediumGray: Color.lerp(mediumGray, other.mediumGray, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      red: Color.lerp(red, other.red, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}

// **************************************************************************
// Context extension for color access
// Use 'context.colors' to access active colors defined in InscribeColorTheme
// **************************************************************************

extension InscribeColorThemeBuildContextX on BuildContext {
  InscribeColorThemeExtension get colors =>
      Theme.of(this).extension<InscribeColorThemeExtension>()
          as InscribeColorThemeExtension;
}
