import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/note_type.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/extensions/field_validation_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_date_form_field.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_dropdown_form_field.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';
import 'package:inscribe/features/note_details/bloc/note_details_bloc.dart';

class NoteOverviewPage extends StatefulWidget {
  const NoteOverviewPage({super.key, this.initialNote = const Note()});

  final Note initialNote;

  @override
  State<NoteOverviewPage> createState() => _NoteOverviewPageState();
}

class _NoteOverviewPageState extends State<NoteOverviewPage>
    with AutomaticKeepAliveClientMixin<NoteOverviewPage> {
  final _bloc = IC.getIt<NoteDetailsBloc>();

  String? description;
  NoteType? noteType;
  DateTime? dateOfBirth;

  List<String> _getCategoryNames() {
    return NoteType.values.map((e) => e.getString(context)).toList();
  }

  void _registerChanges() {
    _bloc.add(RegisterChanges());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(defaultScreenPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppDropdownFormField(
            label: Translations.of(context).newNoteScreen.category,
            items: _getCategoryNames(),
            validator: (value) {
              return value.isRequired(context);
            },
            onChanged: (value) => _registerChanges(),
            onSaved: (value) {
              if (value != null) {
                noteType = NoteType.values
                    .firstWhere((e) => e.getString(context) == value);
                _bloc.add(UpdateNoteTypeEvent(noteType: noteType!));
              }
            },
            icon: Icons.favorite_border_rounded,
            initialValue: widget.initialNote.type?.getString(context),
          ),
          AppDateFormField(
            label: Translations.of(context).newNoteScreen.date_of_birth,
            onChanged: (value) => _registerChanges(),
            includePastDates: true,
            onSaved: (value) {
              if (value != null && value != "") {
                dateOfBirth = value.parseDateString();
                _bloc.add(UpdateDateOfBirthEvent(dateOfBirth: dateOfBirth!));
              }
            },
            initialValue: widget.initialNote.dateOfBirth?.formatString(),
          ),
          AppFormField(
            label: Translations.of(context).newNoteScreen.description,
            hint: Translations.of(context).newNoteScreen.description_hint,
            keyboardType: TextInputType.multiline,
            minLines: 4,
            maxLines: 16,
            onChanged: (value) => _registerChanges(),
            onSaved: (value) {
              if (value != null) {
                description = value;
                _bloc.add(
                    UpdateNoteDescriptionEvent(noteDescription: description!));
              }
            },
            initialValue: widget.initialNote.description,
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
