import 'package:flutter/material.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/features/app_drawer/app_drawer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {super.key,
      required this.child,
      this.includeDefaultPadding = false,
      this.includeTopPadding = false,
      this.enableDrawer = false,
      this.fab});

  final Widget child;
  final bool includeDefaultPadding;
  final bool includeTopPadding;

  final bool enableDrawer;
  final Widget? fab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.of(context).beige,
      floatingActionButton: fab,
      drawer: (enableDrawer) ? const AppDrawer() : null,
      body: SingleChildScrollView(
        physics:
            const ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: SizedBox(
          height: context.getScreenHeight(),
          child: Padding(
            padding: EdgeInsets.all((includeDefaultPadding) ? 20 : 0),
            child: Padding(
              padding: EdgeInsets.only(
                  top: (includeDefaultPadding || includeTopPadding) ? 30 : 0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
