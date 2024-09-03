import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';

class NoteTabBar extends StatelessWidget implements PreferredSizeWidget {
  const NoteTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorScheme.of(context).gray,
      child: TabBar(
        labelColor: AppColorScheme.of(context).beige,
        unselectedLabelColor: AppColorScheme.of(context).beige.withOpacity(0.4),
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

  @override
  Size get preferredSize => const Size.fromHeight(tabBarPreferedSize);
}
