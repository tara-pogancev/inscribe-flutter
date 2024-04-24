import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_button_styles.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key, required this.text, required this.onPressed, this.style});

  final String text;
  final Function() onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ?? AppButtonStyles.of(context).gray,
      child: Text(text),
    );
  }
}

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton(
      {super.key, required this.onPressed, required this.icon});

  final Function() onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColorScheme.of(context).black,
      foregroundColor: AppColorScheme.of(context).beige,
      child: icon,
    );
  }
}
