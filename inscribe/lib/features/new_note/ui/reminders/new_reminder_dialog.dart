import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/extensions/field_validation_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_date_form_field.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';

class NewReminderDialog extends StatefulWidget {
  const NewReminderDialog({super.key, this.noteReminder});

  final NoteReminder? noteReminder;

  @override
  State<NewReminderDialog> createState() => _NewReminderDialogState();
}

class _NewReminderDialogState extends State<NewReminderDialog> {
  final _key = GlobalKey<FormState>();

  DateTime selectedDateTime = DateTime.now()
      .copyWith(hour: 10, minute: 0, second: 0, millisecond: 0, microsecond: 0);
  String name = '';
  bool isAnual = false;

  void validateForm() {
    final isValid = _key.currentState!.validate();
    if (isValid) {
      _key.currentState!.save();

      final reminder =
          NoteReminder(name: name, date: selectedDateTime, isAnual: isAnual);

      if (widget.noteReminder != null) {
        reminder.id = widget.noteReminder!.id;
        reminder.noteId = widget.noteReminder!.noteId;
      }

      context.pop(reminder);
    }
  }

  @override
  void initState() {
    super.initState();

    if (widget.noteReminder != null) {
      setState(() {
        name = widget.noteReminder!.name;
        selectedDateTime = widget.noteReminder!.date;
        isAnual = widget.noteReminder!.isAnual;
      });
    }
  }

  void showTimePickerDialog() async {
    final timeOfDay = await showTimePicker(
      initialTime: TimeOfDay(
        hour: selectedDateTime.hour,
        minute: selectedDateTime.minute,
      ),
      context: context,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (timeOfDay != null) {
      setState(() {
        selectedDateTime = selectedDateTime.copyWith(
            hour: timeOfDay.hour, minute: timeOfDay.minute);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _key,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Translations.of(context).newNoteScreen.add_reminder,
              style: AppTextStyles.of(context).cardTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              initialValue: widget.noteReminder?.name,
              label: Translations.of(context).newNoteScreen.name,
              validator: (value) {
                return value.isRequired(context);
              },
              onSaved: (value) {
                setState(() {
                  name = value!;
                });
              },
            ),
            AppDateFormField(
              label: Translations.of(context).newNoteScreen.date,
              initialValue: selectedDateTime.formatString(),
              includeFutureDates: true,
              validator: (value) {
                return value.isRequired(context);
              },
              onSaved: (value) {
                final dateTime = value!.parseDateString();
                setState(
                  () {
                    selectedDateTime = selectedDateTime.copyWith(
                        day: dateTime.day,
                        month: dateTime.month,
                        year: dateTime.year);
                  },
                );
              },
            ),
            InkWell(
              onTap: () => showTimePickerDialog(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(Translations.of(context).newNoteScreen.time),
                    const Spacer(),
                    Text(
                      selectedDateTime.formatTimeOfDayString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(Translations.of(context).newNoteScreen.annual),
                  const Spacer(),
                  Checkbox(
                    value: isAnual,
                    onChanged: (value) {
                      setState(() {
                        isAnual = value ?? false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(Translations.of(context).cancel),
        ),
        FilledButton(
          onPressed: () => validateForm(),
          child: Text(Translations.of(context).confirm),
        ),
      ],
    );
  }
}
