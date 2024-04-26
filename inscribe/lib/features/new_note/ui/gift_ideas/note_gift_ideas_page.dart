import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';

class NoteGiftIdeasPage extends StatefulWidget {
  const NoteGiftIdeasPage({super.key});

  @override
  State<NoteGiftIdeasPage> createState() => _NoteGiftIdeasPageState();
}

class _NoteGiftIdeasPageState extends State<NoteGiftIdeasPage> {
  final _bloc = IC.getIt<NewNoteBloc>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          AppFormField(
            label: Translations.of(context).newNoteScreen.gift_ideas,
            hint: Translations.of(context).newNoteScreen.gift_ideas_hint,
            // icon: Icons.card_giftcard_outlined,
            minLines: 10,
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
