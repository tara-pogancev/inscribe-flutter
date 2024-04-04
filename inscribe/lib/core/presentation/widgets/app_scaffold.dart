import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {super.key,
      required this.child,
      this.includeDefaultPadding = false,
      this.enableDrawer = false,
      this.fab});

  final Widget child;
  final bool includeDefaultPadding;
  // TODO
  final bool enableDrawer;
  final Widget? fab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.of(context).white,
      floatingActionButton: fab,
      body: Padding(
        padding: EdgeInsets.all((includeDefaultPadding) ? 15 : 0),
        child: child,
      ),
    );
  }
}
