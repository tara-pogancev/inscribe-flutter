import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';

class ClickableRoundedContainer extends StatelessWidget {
  const ClickableRoundedContainer({
    super.key,
    required this.onClick,
    required this.color,
    required this.child,
  });

  final Function() onClick;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(),
      splashColor: color,
      child: Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.all(Radius.circular(defaultBorderRadius)),
              color: color),
          child: child),
    );
  }
}
