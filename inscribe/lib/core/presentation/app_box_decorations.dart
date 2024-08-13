import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class AppBoxDecorations {
  BuildContext? context;

  AppBoxDecorations.of(this.context);

  BoxDecoration get outlined {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(defaultBorderRadius),
      border: Border.all(
        color: AppColorScheme.of(context).black,
        width: 3,
      ),
    );
  }

  BoxDecoration get wavesBackground {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(defaultBorderRadius),
      image: const DecorationImage(
          image: AssetImage("assets/images/wave_profile_cover.png"),
          fit: BoxFit.cover),
    );
  }
}
