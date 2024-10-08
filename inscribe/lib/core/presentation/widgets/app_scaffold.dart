import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/features/app_drawer/app_drawer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {super.key,
      required this.child,
      this.includeDefaultPadding = false,
      this.ignoreAllPadding = false,
      this.enableDrawer = false,
      this.fab});

  final Widget child;
  final bool includeDefaultPadding;
  final bool ignoreAllPadding;

  final bool enableDrawer;
  final Widget? fab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.of(context).beige,
      floatingActionButton: fab,
      drawer: (enableDrawer) ? const AppDrawer() : null,
      body: SafeArea(
        top: !ignoreAllPadding,
        // child: SingleChildScrollView(
        //   physics: const ClampingScrollPhysics(
        //       parent: NeverScrollableScrollPhysics()),
        //   child: SizedBox(
        // height: double.infinity,
        child: Padding(
          padding: (includeDefaultPadding)
              ? const EdgeInsets.all(defaultScreenPadding)
              : EdgeInsets.zero,
          child: child,
        ),
        // ),
        // ),
      ),
    );
  }
}
