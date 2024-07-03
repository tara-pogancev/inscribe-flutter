import 'package:flutter/material.dart';
import 'package:inscribe/core/consts.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

class AppFormField extends StatelessWidget {
  const AppFormField(
      {super.key,
      this.label,
      this.hint,
      this.icon,
      this.keyboardType = TextInputType.text,
      this.minLines = 1,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.validator,
      this.initialValue});

  final String? label;
  final String? hint;
  final IconData? icon;
  final TextInputType keyboardType;
  final int minLines;
  final int maxLines;
  final Function(String? value)? onSaved;
  final Function(String? value)? onChanged;
  final String? Function(String? value)? validator;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: formFieldBottomPadding),
      child: TextFormField(
        initialValue: initialValue,
        minLines: minLines,
        maxLines: maxLines,
        onChanged: (newValue) => onChanged?.call(newValue),
        onSaved: (newValue) => onSaved?.call(newValue),
        validator: (value) => validator?.call(value),
        textCapitalization: TextCapitalization.sentences,
        keyboardType: TextInputType.text,
        onTapOutside: (event) {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        style: TextStyle(color: AppColorScheme.of(context).black),
        decoration: InputDecoration(
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              borderSide: BorderSide(color: AppColorScheme.of(context).black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              borderSide: BorderSide(color: AppColorScheme.of(context).black),
            ),
            suffixIcon: (icon != null) ? Icon(icon!) : null,
            label: (label != null)
                ? Text(
                    label!,
                    style: AppTextStyles.of(context).grayFormLabel,
                  )
                : null,
            hintText: hint,
            hintStyle: AppTextStyles.of(context).grayFormHint),
      ),
    );
  }
}
