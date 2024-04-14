import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/home/ui/home_search_bar.dart';
import 'package:inscribe/features/home/ui/no_notes_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      includeDefaultPadding: true,
      child: Column(
        children: [HomeSearchBar(), Expanded(child: NoNotesSection())],
      ),
    );
  }
}
