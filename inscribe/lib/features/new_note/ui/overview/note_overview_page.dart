import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_date_form_field.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_dropdown_form_field.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';

class NoteOverviewPage extends StatefulWidget {
  const NoteOverviewPage({super.key});

  @override
  State<NoteOverviewPage> createState() => _NoteOverviewPageState();
}

class _NoteOverviewPageState extends State<NoteOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          AppDropdownFormField(
            label: Translations.of(context).newNoteScreen.category,
            items: Translations.of(context).newNoteScreen.categories,
            validator: (value) {
              return null;
            },
            onSaved: (value) {},
            icon: Icons.favorite_border_rounded,
          ),
          AppDateFormField(
            label: Translations.of(context).newNoteScreen.date_of_birth,
            validator: (value) {
              return null;
            },
            onSaved: (value) {},
          ),
          AppFormField(
            label: Translations.of(context).newNoteScreen.description,
            hint: Translations.of(context).newNoteScreen.description_hint,
            // icon: Icons.featured_play_list_outlined,
            minLines: 4,
            maxLines: 16,
            validator: (value) {
              return null;
            },
            onSaved: (value) {},
          )
        ],
      ),
    );
  }
}
