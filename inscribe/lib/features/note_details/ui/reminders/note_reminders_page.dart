// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/features/note_details/bloc/note_details_bloc.dart';
import 'package:inscribe/features/note_details/ui/reminders/new_reminder_sheet.dart';
import 'package:inscribe/features/note_details/ui/reminders/reminder_card.dart';

class NoteRemindersPage extends StatefulWidget {
  const NoteRemindersPage({super.key, this.initialNote = const Note()});

  final Note initialNote;

  @override
  State<NoteRemindersPage> createState() => _NoteRemindersPageState();
}

class _NoteRemindersPageState extends State<NoteRemindersPage>
    with AutomaticKeepAliveClientMixin<NoteRemindersPage> {
  final _bloc = IC.getIt<NoteDetailsBloc>();

  void _showNewReminderDialog() async {
    final NoteReminder? reminder = await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: AppColorScheme.of(context).beige,
      builder: (context) => const NewReminderSheet(),
    );

    if (reminder != null) {
      _bloc.add(CreateOrUpdateReminderEvent(reminder: reminder));
      context.showSnackbar(
          snackbarText:
              Translations.of(context).newNoteScreen.reminder_created);
    }
  }

  _showEditReminderDialog(NoteReminder reminder) async {
    final NoteReminder? shouldUpdate = await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: AppColorScheme.of(context).beige,
      builder: (context) => NewReminderSheet(
        noteReminder: reminder,
      ),
    );

    if (shouldUpdate != null) {
      _bloc.add(CreateOrUpdateReminderEvent(reminder: reminder));
    }
  }

  _deleteReminder(NoteReminder reminder) {
    _bloc.add(DeleteReminderEvent(reminder: reminder));
    context.showSnackbar(
        snackbarText: Translations.of(context).newNoteScreen.reminder_deleted);
  }

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
          BlocBuilder<NoteDetailsBloc, NoteDetailsState>(
            bloc: _bloc,
            builder: (context, state) {
              return (state.note.reminders.isEmpty)
                  ? Text(
                      Translations.of(context).newNoteScreen.no_reminders,
                      style: AppTextStyles.of(context).defaultText,
                    )
                  : ListView.separated(
                      itemCount: state.note.reminders.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
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
