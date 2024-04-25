import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';

const formFieldBottomPadding = 20.0;
const defaultBorderRadius = 7.0;

class AppFormField extends StatelessWidget {
  const AppFormField({
    Key? key,
    this.label,
    this.hint,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.minLines = 1,
    this.maxLines = 1,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final IconData? icon;
  final TextInputType keyboardType;
  final int minLines;
  final int maxLines;
  final Function(String? value)? onSaved;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: formFieldBottomPadding),
      child: TextFormField(
        minLines: minLines,
        maxLines: maxLines,
        onSaved: (newValue) => onSaved?.call(newValue),
        validator: (value) => validator?.call(value),
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
