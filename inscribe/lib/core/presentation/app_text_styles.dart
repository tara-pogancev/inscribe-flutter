import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class AppTextStyles {
  BuildContext? context;

  AppTextStyles.of(this.context);

  TextStyle get mainTitle {
    return TextStyle(
        color: AppColorScheme.of(context).black,
        fontSize: 60,
        fontFamily: "Brogi");
  }

  TextStyle get drawerTitle {
    return TextStyle(
        color: AppColorScheme.of(context).white,
        fontSize: 50,
        fontFamily: "Brogi");
  }

  TextStyle get welcomeDescription {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).white,
      fontSize: 20,
    );
  }

  TextStyle get homeTitle {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).black,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get defaultText {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).black,
      fontSize: 14,
    );
  }

  TextStyle get boldTitle {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).black,
      fontSize: 22,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get whiteNameFormField {
    return GoogleFonts.montserrat(
        color: AppColorScheme.of(context).white, fontSize: 18);
  }

  TextStyle get whiteNameFormFieldHint {
    return GoogleFonts.montserrat(
        color: AppColorScheme.of(context).white.withOpacity(0.6),
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w200,
        fontSize: 18);
  }

  TextStyle get grayFormLabel {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).gray,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get grayFormHint {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).gray.withOpacity(0.5),
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get red {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).red,
    );
  }

  TextStyle get cardTitle {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).black,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get cardSubtitle {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).black,
      fontSize: 14,
    );
  }
}
