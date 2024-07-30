import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/extensions/field_validation_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_date_form_field.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';

class NewReminderDialog extends StatefulWidget {
  const NewReminderDialog({super.key});

  @override
  State<NewReminderDialog> createState() => _NewReminderDialogState();
}

class _NewReminderDialogState extends State<NewReminderDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Translations.of(context).newNoteScreen.add_reminder,
            style: AppTextStyles.of(context).cardTitle,
          ),
          SizedBox(
            height: 20,
          ),
          AppFormField(
            label: Translations.of(context).newNoteScreen.name,
            validator: (value) {
              return value.isRequired(context);
            },
            onSaved: (value) {},
          ),
          AppDateFormField(
            label: Translations.of(context).newNoteScreen.date,
            validator: (value) {
              return value.isRequired(context);
            },
            onSaved: (value) {},
          ),
          InkWell(
            onTap: () => showTimePicker(
                initialTime: TimeOfDay(
                  hour: 10,
                  minute: 0,
                ),
                context: context),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(Translations.of(context).newNoteScreen.time),
                  Spacer(),
                  Text(
                    "10:00",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                Spacer(),
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(Translations.of(context).cancel),
        ),
        FilledButton(
          onPressed: () => context.pop(true),
          child: Text(Translations.of(context).confirm),
        ),
      ],
    );
  }
}
