import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class LoadingSpinner extends StatelessWidget {
  const LoadingSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: CircularProgressIndicator(
          color: AppColorScheme.of(context).gray,
        ),
      ),
    );
  }
}
