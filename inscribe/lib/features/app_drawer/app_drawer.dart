import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/router/app_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _navigateRoute(BuildContext context, String route) {
    context.push(route);
  }

  String _getCurrentRoute(BuildContext context) {
    return GoRouter.of(context).routeInformationProvider.value.uri.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColorScheme.of(context).beige,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
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
            enabled: _getCurrentRoute(context) != Routes.home,
            leading: Icon(Icons.home_outlined),
            title: Text(Translations.of(context).drawer.memoirs),
            onTap: () {
              _navigateRoute(context, Routes.home);
            },
          ),
          ListTile(
            enabled: _getCurrentRoute(context) != Routes.archive,
            leading: Icon(Icons.delete_outline),
            title: Text(Translations.of(context).drawer.archive),
            onTap: () {
              _navigateRoute(context, Routes.archive);
            },
          ),
          ListTile(
            enabled: _getCurrentRoute(context) != Routes.settings,
            leading: Icon(Icons.settings_outlined),
            title: Text(Translations.of(context).drawer.settings),
            onTap: () {
              _navigateRoute(context, Routes.settings);
            },
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.calendar_month),
            title: Text(Translations.of(context).drawer.calendar),
            onTap: () {
              // _navigateRoute(context, Routes.home);
            },
          ),
          Divider(),
          ListTile(
            enabled: false,
            leading: Icon(Icons.file_upload),
            title: Text(Translations.of(context).drawer.export),
            onTap: () {
              // _navigateRoute(context, Routes.home);
            },
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.file_download),
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
