import 'package:flutter/material.dart';
import 'package:inscribe/features/new_note/ui/gift_ideas/note_gift_ideas_page.dart';
import 'package:inscribe/features/new_note/ui/overview/note_overview_page.dart';
import 'package:inscribe/features/new_note/ui/reminders/note_reminders_page.dart';

class NoteTabsSwitcher extends StatefulWidget {
  const NoteTabsSwitcher({super.key, required this.currentTabIndex});

  final int currentTabIndex;

  @override
  State<NoteTabsSwitcher> createState() => _NoteTabsSwitcherState();
}

class _NoteTabsSwitcherState extends State<NoteTabsSwitcher>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Widget> tabs = [
    const NoteOverviewPage(),
    const NoteGiftIdeasPage(),
    const NoteRemindersPage()
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        // transitionBuilder: (child, animation) => null,

        child: tabs[widget.currentTabIndex]);
  }
}
