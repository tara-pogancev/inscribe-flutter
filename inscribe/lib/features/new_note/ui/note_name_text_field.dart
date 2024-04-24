import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class NoteNameTextField extends StatelessWidget {
  const NoteNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 1,
      maxLines: 2,
      maxLength: 30,
      style: AppTextStyles.of(context).whiteNameFormField,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          counterText: "",
          hintText: Translations.of(context).newNoteScreen.friend_name_hint,
          hintStyle: AppTextStyles.of(context).whiteNameFormFieldHint,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: AppColorScheme.of(context)
                    .beige
                    .withOpacity(0.2)), // Line color when not focused
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: AppColorScheme.of(context)
                    .beige), // Line color when focused
          ),
          prefix: const SizedBox(
            width:
                48, // This gap matches the width of the suffix icon for better visual symetry
          ),
          suffixIcon: const Icon(Icons.edit_outlined),
          suffixIconColor: AppColorScheme.of(context).beige),
    );
  }
}
