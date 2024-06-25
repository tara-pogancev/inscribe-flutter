import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/settings/ui/settings_header.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      includeDefaultPadding: true,
      enableDrawer: true,
      child: Column(
        children: [
          SettingsHeader(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
