import 'package:flutter/material.dart';
import 'package:inscribe/features/new_note/ui/gift_ideas/note_gift_ideas_page.dart';
import 'package:inscribe/features/new_note/ui/overview/note_overview_page.dart';
import 'package:inscribe/features/new_note/ui/reminders/note_reminders_page.dart';

class NoteTabsSwitcher extends StatefulWidget {
  const NoteTabsSwitcher({super.key, required this.controller});

  final TabController controller;

  @override
  State<NoteTabsSwitcher> createState() => _NoteTabsSwitcherState();
}

class _NoteTabsSwitcherState extends State<NoteTabsSwitcher> {
  final List<Widget> tabs = [
    const NoteOverviewPage(),
    const NoteGiftIdeasPage(),
    const NoteRemindersPage()
  ];

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.controller,
      children: tabs,
    );
  }
}
