import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/core/presentation/widgets/default_app_header.dart';
import 'package:inscribe/features/settings/ui/settings_language_picker.dart';
import 'package:inscribe/features/settings/ui/settings_notes_view_picker.dart';
import 'package:inscribe/features/settings/ui/settings_theme_picker.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String appVersion = '1.0.0';

  @override
  void initState() {
    super.initState();
    _setAppVersion();
  }

  void _setAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      includeDefaultPadding: true,
      enableDrawer: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultAppHeader(
            title: Translations.of(context).drawer.settings,
          ),
          const SizedBox(
            height: defaultScreenPadding,
          ),
          Text(
            Translations.of(context).settingsScreen.visual.toUpperCase(),
            style: AppTextStyles.of(context).subtitle,
          ),
          const SettingsThemePicker(),
          const SettingsNotesViewPicker(),
          const Divider(
            height: defaultScreenPadding,
          ),
          Text(
            Translations.of(context).settingsScreen.system.toUpperCase(),
            style: AppTextStyles.of(context).subtitle,
          ),
          const SettingsLanguagePicker(),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: Text(
              Translations.of(context)
                  .settingsScreen
                  .app_name_and_version(version: appVersion),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
