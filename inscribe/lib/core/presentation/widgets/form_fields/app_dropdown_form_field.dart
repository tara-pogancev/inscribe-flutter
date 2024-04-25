import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';

class AppDropdownFormField extends StatefulWidget {
  const AppDropdownFormField({
    Key? key,
    required this.label,
    required this.items,
    this.icon,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  final String label;
  final List<String> items;
  final IconData? icon;
  final Function(String? value)? onSaved;
  final String? Function(String? value)? validator;

  @override
  State<AppDropdownFormField> createState() => _AppDropdownFormFieldState();
}

class _AppDropdownFormFieldState extends State<AppDropdownFormField> {
  dynamic _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: formFieldBottomPadding),
      child: DropdownButtonFormField<String>(
        items: Translations.of(context)
            .newNoteScreen
            .categories
            .map(
              (String e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: (value) {
          setState(() {
            _selectedItem = value;
          });
        },
        value: _selectedItem,
        onSaved: (newValue) => widget.onSaved?.call(newValue),
        validator: (value) => widget.validator?.call(value),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColorScheme.of(context).black),
          ),
          suffixIcon: (widget.icon != null) ? Icon(widget.icon) : null,
          label: Text(
            widget.label,
            style: AppTextStyles.of(context).grayFormLabel,
          ),
        ),
      ),
    );
  }
}
