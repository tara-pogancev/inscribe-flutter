import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
    required this.title,
    this.startWidget,
    this.endWidget,
  });

  final String title;
  final Widget? startWidget;
  final Widget? endWidget;

  @override
  Widget build(BuildContext context) {
    const iconButtonWidth = 48.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        startWidget ??
            Container(
              width: iconButtonWidth,
            ),
        Flexible(
          flex: 1,
          child: Text(
            title,
            style: AppTextStyles.of(context).boldTitle,
            textAlign: TextAlign.center,
          ),
        ),
        endWidget ??
            Container(
              width: iconButtonWidth,
            ),
      ],
    );
  }
}
