import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/new_note/ui/circle_image.dart';
import 'package:inscribe/features/new_note/ui/note_name_text_field.dart';

class NewNoteScreen extends StatelessWidget {
  const NewNoteScreen({super.key});

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
              children: [_buildHeader(context), _buildTabRow(context)],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
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

  Widget _buildTabRow(BuildContext context) {
    return TabBar();
  }
}
