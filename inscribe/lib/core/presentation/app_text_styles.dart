import 'package:flutter/material.dart';
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
    return TextStyle(
      color: AppColorScheme.of(context).white,
      fontSize: 20,
      fontFamily: "Montserat", //TODO
    );
  }
}
