import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class AppButtonStyles {
  BuildContext? context;

  AppButtonStyles.of(this.context);

  ButtonStyle get black {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      foregroundColor: context!.colors.beige,
      backgroundColor: context!.colors.black,
    );
  }

  ButtonStyle get white {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      foregroundColor: context!.colors.gray,
      backgroundColor: context!.colors.beige,
    );
  }

  ButtonStyle get gray {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      foregroundColor: context!.colors.beige,
      backgroundColor: context!.colors.gray,
    );
  }
}
