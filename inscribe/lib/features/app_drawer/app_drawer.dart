import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/router/app_router.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  late String currentRoute;

  void _navigateRoute(String route) {
    if (_getCurrentRoute() != route) {
      Scaffold.of(context).closeDrawer();
      setState(() {
        currentRoute = _getCurrentRoute();
      });
      context.push(route);
    }
  }

  String _getCurrentRoute() {
    final RouteMatch lastMatch =
        GoRouter.of(context).routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : GoRouter.of(context).routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  @override
  void initState() {
    super.initState();

    currentRoute = _getCurrentRoute();
  }

  @override
  Widget build(BuildContext context) {
    currentRoute = _getCurrentRoute();
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
            enabled: currentRoute != Routes.home,
            leading: Icon(Icons.home_outlined),
            title: Text(Translations.of(context).drawer.memoirs),
            onTap: () {
              _navigateRoute(Routes.home);
            },
          ),
          ListTile(
            enabled: currentRoute != Routes.archive,
            leading: Icon(Icons.delete_outline),
            title: Text(Translations.of(context).drawer.archive),
            onTap: () {
              _navigateRoute(Routes.archive);
            },
          ),
          ListTile(
            enabled: currentRoute != Routes.settings,
            leading: Icon(Icons.settings_outlined),
            title: Text(Translations.of(context).drawer.settings),
            onTap: () {
              _navigateRoute(Routes.settings);
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
