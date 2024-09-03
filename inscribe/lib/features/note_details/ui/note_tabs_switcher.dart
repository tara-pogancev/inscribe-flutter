import 'package:flutter/material.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/features/note_details/ui/gift_ideas/note_gift_ideas_page.dart';
import 'package:inscribe/features/note_details/ui/overview/note_overview_page.dart';
import 'package:inscribe/features/note_details/ui/reminders/note_reminders_page.dart';

class NoteTabsSwitcher extends StatefulWidget {
  const NoteTabsSwitcher(
      {super.key, required this.controller, required this.initialNote});

  final TabController controller;
  final Note initialNote;

  @override
  State<NoteTabsSwitcher> createState() => _NoteTabsSwitcherState();
}

class _NoteTabsSwitcherState extends State<NoteTabsSwitcher> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [
      NoteOverviewPage(
        initialNote: widget.initialNote,
      ),
      NoteGiftIdeasPage(
        initialNote: widget.initialNote,
      ),
      NoteRemindersPage(
        initialNote: widget.initialNote,
      )
    ];

    return TabBarView(
      controller: widget.controller,
      children: tabs,
    );
  }
}
