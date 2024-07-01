import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inscribe/core/extensions/field_validation_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/features/new_note/bloc/new_note_bloc.dart';

class NoteNameTextField extends StatefulWidget {
  const NoteNameTextField({super.key});

  @override
  State<NoteNameTextField> createState() => _NoteNameTextFieldState();
}

class _NoteNameTextFieldState extends State<NoteNameTextField> {
  final _bloc = IC.getIt<NewNoteBloc>();

  String? name;

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewNoteBloc, NewNoteState>(
      bloc: _bloc,
      listener: (context, state) {
        if (name == null && state.note.name != "") {
          _controller.value = _controller.value.copyWith(text: state.note.name);
        }
      },
      child: TextFormField(
        controller: _controller,
        minLines: 1,
        maxLength: 30,
        style: AppTextStyles.of(context).whiteNameFormField,
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.sentences,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        keyboardType: TextInputType.text,
        validator: (value) {
          return value.isRequired(context);
        },
        onSaved: (newValue) {
          if (newValue != null) {
            name = newValue;
            _bloc.add(UpdateNoteNameEvent(noteName: name!));
          }
        },
        decoration: InputDecoration(
            counterText: "",
            hintText: Translations.of(context).newNoteScreen.friend_name_hint,
            hintStyle: AppTextStyles.of(context).whiteNameFormFieldHint,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: lightAppColorScheme.beige
                      .withOpacity(0.2)), // Line color when not focused
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: lightAppColorScheme.beige), // Line color when focused
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color:
                      lightAppColorScheme.red), // Line color when not focused
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color:
                      lightAppColorScheme.red), // Line color when not focused
            ),
            errorStyle: AppTextStyles.of(context).red,
            prefix: const SizedBox(
              width:
                  48, // This gap matches the width of the suffix icon for better visual symetry
            ),
            suffixIcon: const Icon(Icons.edit_outlined),
            suffixIconColor: lightAppColorScheme.beige),
      ),
    );
  }
}
