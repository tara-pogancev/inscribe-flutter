import 'package:flutter/material.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';
import 'package:inscribe/features/note_details/bloc/note_details_bloc.dart';

class NoteGiftIdeasPage extends StatefulWidget {
  const NoteGiftIdeasPage({super.key, this.initialNote = const Note()});

  final Note initialNote;

  @override
  State<NoteGiftIdeasPage> createState() => _NoteGiftIdeasPageState();
}

class _NoteGiftIdeasPageState extends State<NoteGiftIdeasPage>
    with AutomaticKeepAliveClientMixin<NoteGiftIdeasPage> {
  final _bloc = IC.getIt<NoteDetailsBloc>();

  String? giftIdeas;

  void _registerChanges() {
    _bloc.add(RegisterChanges());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppFormField(
            initialValue: widget.initialNote.giftIdeas,
            label: Translations.of(context).newNoteScreen.gift_ideas,
            hint: Translations.of(context).newNoteScreen.gift_ideas_hint,
            keyboardType: TextInputType.multiline,
            // icon: Icons.card_giftcard_outlined,
            onChanged: (value) => _registerChanges(),
            minLines: 10,
            maxLines: 16,
            onSaved: (value) {
              if (value != null) {
                giftIdeas = value;
                _bloc.add(UpdateGiftIdeasEvent(giftIdeas: giftIdeas!));
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
