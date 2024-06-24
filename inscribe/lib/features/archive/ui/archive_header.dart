import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/widgets/title_bar.dart';

class ArchiveHeader extends StatelessWidget {
  const ArchiveHeader({super.key});

  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void _deleteAll() {}

  @override
  Widget build(BuildContext context) {
    return TitleBar(
      title: Translations.of(context).drawer.archive,
      startWidget: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          _openDrawer(context);
        },
      ),
      endWidget: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () {
          _deleteAll();
        },
      ),
    );
  }
}
