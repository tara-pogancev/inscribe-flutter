import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

const double gradientHeight = 20;

class FadedEdgesContainer extends StatelessWidget {
  const FadedEdgesContainer({
    super.key,
    this.color,
    required this.child,
  });

  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final gradientColor = color ?? AppColorScheme.of(context).beige;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        child,
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            height: gradientHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  gradientColor,
                  gradientColor.withOpacity(0),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 20,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  gradientColor.withOpacity(0),
                  gradientColor,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
