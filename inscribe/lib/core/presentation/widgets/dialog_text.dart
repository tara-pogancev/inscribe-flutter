import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class DialogText extends StatelessWidget {
  const DialogText(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          const TextStyle().copyWith(color: AppColorScheme.of(context).black),
    );
  }
}
