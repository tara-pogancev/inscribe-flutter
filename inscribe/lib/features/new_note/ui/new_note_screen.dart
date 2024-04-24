import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/new_note/ui/circle_image.dart';
import 'package:inscribe/features/new_note/ui/note_gift_ideas_page.dart';
import 'package:inscribe/features/new_note/ui/note_name_text_field.dart';
import 'package:inscribe/features/new_note/ui/note_overview_page.dart';
import 'package:inscribe/features/new_note/ui/note_reminders_page.dart';
import 'package:inscribe/features/new_note/ui/note_tab_bar.dart';

const noteTabsNumber = 3;

class NewNoteScreen extends StatefulWidget {
  const NewNoteScreen({super.key});

  @override
  State<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _currentTabIndex = 0;

  final List<Widget> tabs = [
    const NoteOverviewPage(),
    const NoteGiftIdeasPage(),
    const NoteRemindersPage()
  ];

  void _setCurrentTabIndex(int value) {
    setState(() {
      _currentTabIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: noteTabsNumber);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      fab: AppFloatingActionButton(
        onPressed: () {},
        icon: const Icon(Icons.save_outlined),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wave_profile_cover.png"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  _buildHeader(),
                ],
              ),
            ),
            Column(
              children: [
                NoteTabBar(
                  tabController: _tabController,
                  onTabClick: (index) => _setCurrentTabIndex(index),
                ),
                _buildTabs()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColorScheme.of(context).beige,
                ),
              )
            ],
          ),
          CircleImage(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: NoteNameTextField(),
          )
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: SizedBox(
        key: ValueKey<int>(_currentTabIndex),
        child: tabs[_currentTabIndex],
      ),
    );
  }
}
