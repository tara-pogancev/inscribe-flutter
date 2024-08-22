import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/extensions/router_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/router/app_router.dart';
import 'package:inscribe/main.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  void _navigateHomeRoute() {
    if (GoRouter.of(context).getCurrentRoute() != Routes.home) {
      Scaffold.of(context).closeDrawer();
      InscribeApp.router.popUntil(Routes.home);
    }
  }

  void _navigateRoute(String route) {
    if (InscribeApp.router.getCurrentRoute() != route) {
      Scaffold.of(context).closeDrawer();

      if (InscribeApp.router.getCurrentRoute() != Routes.home) {
        InscribeApp.router.go(route);
      } else {
        InscribeApp.router.push(route);
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
            enabled: InscribeApp.router.getCurrentRoute() != Routes.home,
            leading: const Icon(Icons.home_outlined),
            title: Text(Translations.of(context).drawer.memoirs),
            onTap: () {
              _navigateHomeRoute();
            },
          ),
          ListTile(
            enabled: InscribeApp.router.getCurrentRoute() != Routes.archive,
            leading: const Icon(Icons.delete_outline),
            title: Text(Translations.of(context).drawer.archive),
            onTap: () {
              _navigateRoute(Routes.archive);
            },
          ),
          ListTile(
            enabled: InscribeApp.router.getCurrentRoute() != Routes.settings,
            leading: const Icon(Icons.settings_outlined),
            title: Text(Translations.of(context).drawer.settings),
            onTap: () {
              _navigateRoute(Routes.settings);
            },
          ),
          ListTile(
            enabled: false,
            leading: const Icon(Icons.calendar_month),
            title: Text(Translations.of(context).drawer.calendar),
            onTap: () {
              // _navigateRoute(context, Routes.home);
            },
          ),
          if (kDebugMode)
            ListTile(
              enabled:
                  InscribeApp.router.getCurrentRoute() != Routes.notifications,
              leading: const Icon(Icons.notifications_outlined),
              title: const Text("[DEBUG] Notifications"),
              onTap: () {
                _navigateRoute(Routes.notifications);
              },
            ),
          const Divider(),
          ListTile(
            enabled: false,
            leading: const Icon(Icons.file_upload),
            title: Text(Translations.of(context).drawer.export),
            onTap: () {
              // _navigateRoute(context, Routes.home);
            },
          ),
          ListTile(
            enabled: false,
            leading: const Icon(Icons.file_download),
            title: Text(Translations.of(context).drawer.import),
            onTap: () {
              // _navigateRoute(context, Routes.home);
            },
          ),
        ],
      ),
    );
  }
}
