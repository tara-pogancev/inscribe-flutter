import 'package:flutter/material.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/ui/reminders/new_reminder_dialog.dart';

class NoteRemindersPage extends StatefulWidget {
  const NoteRemindersPage({super.key, this.initialNote = const Note()});

  final Note initialNote;

  @override
  State<NoteRemindersPage> createState() => _NoteRemindersPageState();
}

class _NoteRemindersPageState extends State<NoteRemindersPage>
    with AutomaticKeepAliveClientMixin<NoteRemindersPage> {
  // ignore: unused_field
  final _bloc = IC.getIt<NewNoteBloc>();

  void _showNewReminderDialog() {
    showDialog(
      context: context,
      builder: (context) => NewReminderDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(Translations.of(context).newNoteScreen.coming_soon,
              style: AppTextStyles.of(context).boldTitle),
          AppButton(
            text: Translations.of(context).newNoteScreen.add_reminder,
            onPressed: () => _showNewReminderDialog(),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
