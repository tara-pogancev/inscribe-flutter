import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class AppTextStyles {
  BuildContext? context;

  AppTextStyles.of(this.context);

  TextStyle get mainTitle {
    return TextStyle(
      color: context!.colors.black,
      fontSize: 60,
      fontFamily: "Brogi",
    );
  }

  TextStyle get drawerTitle {
    return TextStyle(
      color: lightAppColorScheme.white,
      fontSize: 50,
      fontFamily: "Brogi",
    );
  }

  TextStyle get welcomeDescription {
    return GoogleFonts.montserrat(color: context!.colors.white, fontSize: 20);
  }

  TextStyle get homeTitle {
    return GoogleFonts.montserrat(
      color: context!.colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultText {
    return GoogleFonts.montserrat(color: context!.colors.black, fontSize: 14);
  }

  TextStyle get boldTitle {
    return GoogleFonts.montserrat(
      color: context!.colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get whiteNameFormField {
    return GoogleFonts.montserrat(
      color: lightAppColorScheme.white,
      fontSize: 18,
    );
  }

  TextStyle get whiteNameFormFieldHint {
    return GoogleFonts.montserrat(
      color: lightAppColorScheme.white.withAlpha(135),
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w200,
      fontSize: 18,
    );
  }

  TextStyle get grayFormLabel {
    return GoogleFonts.montserrat(
      color: context!.colors.gray,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get grayFormHint {
    return GoogleFonts.montserrat(
      color: context!.colors.gray.withAlpha(127),
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get red {
    return GoogleFonts.montserrat(color: context!.colors.red);
  }

  TextStyle get cardTitle {
    return GoogleFonts.montserrat(
      color: context!.colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get cardSubtitle {
    return GoogleFonts.montserrat(color: context!.colors.black, fontSize: 14);
  }

  TextStyle get settingsTitle {
    return GoogleFonts.montserrat(
      color: context!.colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    );
  }

  TextStyle get settingsSubtitle {
    return GoogleFonts.montserrat(color: context!.colors.gray, fontSize: 12);
  }

  TextStyle get subtitle {
    return GoogleFonts.montserrat(color: context!.colors.gray, fontSize: 14);
  }

  TextStyle get cardPrimaryText {
    return GoogleFonts.montserrat(
      color: context!.colors.black,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get cardSecondaryText {
    return GoogleFonts.montserrat(color: context!.colors.black, fontSize: 14);
  }

  TextStyle get cardTernaryText {
    return GoogleFonts.montserrat(color: context!.colors.gray, fontSize: 12);
  }
}
