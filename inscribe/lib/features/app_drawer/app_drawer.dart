import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/repositories/import_export/import_export_repository.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/extensions/router_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/router/app_router.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final router = IC.getIt<GoRouter>();

  void navigateHomeRoute() {
    if (router.getCurrentRoute() != Routes.home) {
      Scaffold.of(context).closeDrawer();
      router.popUntil(Routes.home);
    }
  }

  void navigateRoute(String route) {
    if (router.getCurrentRoute() != route) {
      Scaffold.of(context).closeDrawer();

      router.popUntilOrPush(route);
    }
  }

  void exportData() async {
    Uint8List bytes = IC.getIt<ImportExportRepository>().getExportedData();
    final filename =
        "Inscribe_Export_${DateTime.now().formatFilenameDateString()}";

    final isExported = await FileSaver.instance.saveAs(
        name: filename, bytes: bytes, ext: "json", mimeType: MimeType.json);

    if (isExported != null) {
      Scaffold.of(context).closeDrawer();
      context.showSnackbar(
          snackbarText: Translations.of(context).importExport.fileDownloaded);
    }
  }

  void importData() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowedExtensions: ["json"], type: FileType.custom);

    if (result != null) {
      File file = File(result.files.single.path!);
      final importResult =
          await IC.getIt<ImportExportRepository>().importFromFile(file);

      Scaffold.of(context).closeDrawer();
      if (importResult) {
        context.showSnackbar(
          snackbarText:
              Translations.of(context).importExport.dataHasBeenImported,
        );
      } else {
        context.showSnackbar(
          snackbarText: Translations.of(context).importExport.error,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColorScheme.of(context).beige,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/wave_profile_cover.png"),
                  fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                Translations.of(context).appName,
                style: AppTextStyles.of(context).drawerTitle,
              ),
            ),
          ),
          ListTile(
            enabled: router.getCurrentRoute() != Routes.home,
            leading: const Icon(Icons.home_outlined),
            title: Text(Translations.of(context).drawer.memoirs),
            onTap: () => navigateHomeRoute(),
          ),
          ListTile(
            enabled: router.getCurrentRoute() != Routes.archive,
            leading: const Icon(Icons.delete_outline),
            title: Text(Translations.of(context).drawer.archive),
            onTap: () => navigateRoute(Routes.archive),
          ),
          ListTile(
            enabled: router.getCurrentRoute() != Routes.settings,
            leading: const Icon(Icons.settings_outlined),
            title: Text(Translations.of(context).drawer.settings),
            onTap: () => navigateRoute(Routes.settings),
          ),
          ListTile(
            enabled: router.getCurrentRoute() != Routes.calendar,
            leading: const Icon(Icons.calendar_month),
            title: Text(Translations.of(context).drawer.calendar),
            onTap: () => navigateRoute(Routes.calendar),
          ),
          if (kDebugMode)
            ListTile(
              enabled: router.getCurrentRoute() != Routes.notifications,
              leading: const Icon(Icons.notifications_outlined),
              title: const Text("[DEBUG] Notifications"),
              onTap: () => navigateRoute(Routes.notifications),
            ),
          const Divider(),
          ListTile(
            enabled: true,
            leading: const Icon(Icons.file_upload),
            title: Text(Translations.of(context).drawer.export),
            onTap: () => exportData(),
          ),
          ListTile(
            enabled: true,
            leading: const Icon(Icons.file_download),
            title: Text(Translations.of(context).drawer.import),
            onTap: () => importData(),
          ),
        ],
      ),
    );
  }
}
