import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/presentation/widgets/title_bar.dart';

class DefaultAppHeader extends StatelessWidget {
  const DefaultAppHeader(
      {super.key, required this.title, this.includeAdditionalPadding = false});

  final String title;
  final bool includeAdditionalPadding;

  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final padding =
        ((includeAdditionalPadding) ? defaultScreenPadding : 0).toDouble();

    return Padding(
      padding: EdgeInsets.only(left: padding, right: padding, top: padding),
      child: TitleBar(
        title: title,
        startWidget: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _openDrawer(context);
          },
        ),
      ),
    );
  }
}
