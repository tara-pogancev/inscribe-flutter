import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.title,
    this.startWidget,
    this.endWidget,
  }) : super(key: key);

  final String title;
  final Widget? startWidget;
  final Widget? endWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        startWidget ?? Container(),
        Flexible(
          child: Text(
            title,
            style: AppTextStyles.of(context).boldTitle,
            textAlign: TextAlign.center,
          ),
        ),
        endWidget ?? Container(),
      ],
    );
  }
}
