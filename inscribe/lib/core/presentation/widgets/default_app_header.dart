import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/widgets/title_bar.dart';

class DefaultAppHeader extends StatelessWidget {
  const DefaultAppHeader({super.key, required this.title});

  final String title;

  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return TitleBar(
      title: title,
      startWidget: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          _openDrawer(context);
        },
      ),
    );
  }
}
