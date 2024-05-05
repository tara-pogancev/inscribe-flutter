import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';

class NoteRemindersPage extends StatefulWidget {
  const NoteRemindersPage({super.key});

  @override
  State<NoteRemindersPage> createState() => _NoteRemindersPageState();
}

class _NoteRemindersPageState extends State<NoteRemindersPage>
    with AutomaticKeepAliveClientMixin<NoteRemindersPage> {
  final _bloc = IC.getIt<NewNoteBloc>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(Translations.of(context).newNoteScreen.coming_soon,
              style: AppTextStyles.of(context).boldTitle),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
