import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/new_note/ui/circle_image.dart';
import 'package:inscribe/features/new_note/ui/note_name_text_field.dart';

class NewNoteScreen extends StatefulWidget {
  const NewNoteScreen({super.key});

  @override
  State<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
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
              children: [_buildHeader(), _buildTabRow()],
            ),
          )
        ],
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
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: NoteNameTextField(),
          )
        ],
      ),
    );
  }

  Widget _buildTabRow() {
    return Container(
      color: AppColorScheme.of(context).gray,
      child: TabBar(
        controller: _tabController,
        labelColor: AppColorScheme.of(context).beige,
        indicatorColor: AppColorScheme.of(context).beige,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.symmetric(vertical: 10),
        indicatorWeight: 0.2,
        tabs: [
          Tab(text: Translations.of(context).newNoteScreen.overview),
          Tab(text: Translations.of(context).newNoteScreen.gift_ideas),
          Tab(text: Translations.of(context).newNoteScreen.reminders)
        ],
      ),
    );
  }
}
