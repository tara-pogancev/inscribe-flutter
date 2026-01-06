import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_box_decorations.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
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
  late String appVersion = "";

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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultAppHeader(title: Translations.of(context).drawer.settings),
            const SizedBox(height: defaultScreenPadding),
            Text(
              Translations.of(context).settingsScreen.visual.toUpperCase(),
              style: AppTextStyles.of(context).subtitle,
            ),
            const SettingsThemePicker(),
            const SettingsNotesViewPicker(),
            const Divider(height: defaultScreenPadding),
            Text(
              Translations.of(context).settingsScreen.system.toUpperCase(),
              style: AppTextStyles.of(context).subtitle,
            ),
            const SettingsLanguagePicker(),
            SizedBox(height: defaultScreenPadding),
            Container(
              padding: EdgeInsets.all(15),
              decoration: AppBoxDecorations.of(context).outlined,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text(
                    Translations.of(context).settingsScreen.remindersNote,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: context.colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    Translations.of(
                      context,
                    ).settingsScreen.remindersNoteDescription,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: context.colors.gray),
                  ),
                ],
              ),
            ),
            SizedBox(height: defaultScreenPadding),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  Translations.of(
                    context,
                  ).settingsScreen.app_name_and_version(version: appVersion),
                  textAlign: TextAlign.center,
                  style: AppTextStyles.of(context).defaultText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
