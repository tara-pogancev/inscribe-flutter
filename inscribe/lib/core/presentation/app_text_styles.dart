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

  TextStyle get welcomeDescription {
    return GoogleFonts.montserrat(
      color: AppColorScheme.of(context).white,
      fontSize: 20,
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
}
