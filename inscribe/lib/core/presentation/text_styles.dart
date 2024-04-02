import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/color_scheme.dart';

class AppTextStyles {
  BuildContext? context;

  AppTextStyles.of(this.context);

  TextStyle get mainTitle {
    return TextStyle(
        color: AppColorScheme.of(context).black,
        fontSize: 24,
        fontWeight: FontWeight.bold);
  }
}
