import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_button_styles.dart';

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
      style: style ?? AppButtonStyles.of(context).black,
      child: Text(text),
    );
  }
}
