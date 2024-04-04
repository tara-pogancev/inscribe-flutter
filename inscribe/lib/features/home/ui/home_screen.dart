import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: Column(
        children: [Text("hi")],
      ),
    );
  }
}
