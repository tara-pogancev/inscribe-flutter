import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/new_note/ui/circle_image.dart';
import 'package:inscribe/features/new_note/ui/note_name_text_field.dart';
import 'package:inscribe/features/new_note/ui/note_tab_bar.dart';
import 'package:inscribe/features/new_note/ui/note_tabs_switcher.dart';
import 'package:inscribe/features/new_note/usecases/get_random_profile_image_usecase.dart';

const noteTabsNumber = 3;

class NewNoteScreen extends StatefulWidget {
  const NewNoteScreen({super.key});

  @override
  State<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen>
    with SingleTickerProviderStateMixin {
  final getRandomProfileImageUseCase = GetRandomProfileImageUseCase();

  late TabController _tabController;

  late String initialProfilePicture;

  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: noteTabsNumber);
    initialProfilePicture = getRandomProfileImageUseCase();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _setCurrentTabIndex(int value) {
    setState(() {
      _currentTabIndex = value;
    });
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
                NoteTabsSwitcher(currentTabIndex: _currentTabIndex)
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
          CircleImage(
            imageName: initialProfilePicture,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: NoteNameTextField(),
          )
        ],
      ),
    );
  }
}
