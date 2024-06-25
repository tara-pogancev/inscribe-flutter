import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/widgets/title_bar.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key});

  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return TitleBar(
      title: Translations.of(context).drawer.settings,
      startWidget: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          _openDrawer(context);
        },
      ),
    );
  }
}
