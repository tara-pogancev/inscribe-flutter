import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';
import 'package:inscribe/features/new_note/ui/reminders/new_reminder_dialog.dart';
import 'package:inscribe/features/new_note/ui/reminders/reminder_card.dart';

class NoteRemindersPage extends StatefulWidget {
  NoteRemindersPage({super.key, this.initialNote = const Note()});

  final Note initialNote;

  @override
  State<NoteRemindersPage> createState() => _NoteRemindersPageState();
}

class _NoteRemindersPageState extends State<NoteRemindersPage>
    with AutomaticKeepAliveClientMixin<NoteRemindersPage> {
  final _bloc = IC.getIt<NewNoteBloc>();

  void _showNewReminderDialog() async {
    final NoteReminder? reminder = await showDialog(
      context: context,
      builder: (context) => NewReminderDialog(),
    );

    if (reminder != null) {
      _bloc.add(CreateOrUpdateReminderEvent(reminder: reminder));
      context.showSnackbar(
          snackbarText:
              Translations.of(context).newNoteScreen.reminder_created);
    }
  }

  _showEditReminderDialog(NoteReminder reminder) async {
    final NoteReminder? updatedReminder = await showDialog(
      context: context,
      builder: (context) => NewReminderDialog(
        noteReminder: reminder,
      ),
    );

    if (updatedReminder != null) {
      _bloc.add(DeleteReminderEvent(reminder: updatedReminder));
    }
  }

  _deleteReminder(NoteReminder reminder) {}

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppButton(
            text: Translations.of(context).newNoteScreen.add_reminder,
            onPressed: () => _showNewReminderDialog(),
          ),
          BlocBuilder<NewNoteBloc, NewNoteState>(
            bloc: _bloc,
            builder: (context, state) {
              return (state.note.reminders.isEmpty)
                  ? Text(Translations.of(context).newNoteScreen.no_reminders)
                  : ListView.separated(
                      itemCount: state.note.reminders.length,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        final reminder = state.note.reminders[index];
                        return ReminderCard(
                          reminder: reminder,
                          onDelete: () => _deleteReminder(reminder),
                          onEdit: () => _showEditReminderDialog(reminder),
                        );
                      },
                    );
            },
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
