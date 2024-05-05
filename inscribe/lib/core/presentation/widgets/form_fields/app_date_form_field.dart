import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';
import 'package:intl/intl.dart';

const dateFormat = "dd MMM yyyy";

class AppDateFormField extends StatefulWidget {
  const AppDateFormField({
    super.key,
    required this.label,
    this.onSaved,
    this.validator,
  });

  final String label;
  final Function(String? value)? onSaved;
  final String? Function(String? value)? validator;

  @override
  State<AppDateFormField> createState() => _AppDateFormFieldState();
}

class _AppDateFormFieldState extends State<AppDateFormField> {
  final _dateController = TextEditingController();
  DateTime? _dateValue;

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  void _showDatePickerDialog() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _dateValue,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      _dateController.text = _formatDate(pickedDate);
      _dateValue = pickedDate;
    }
  }

  String _formatDate(DateTime date) {
    return DateFormat(dateFormat).format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: formFieldBottomPadding),
      child: TextFormField(
        controller: _dateController,
        readOnly: true,
        keyboardType: TextInputType.none,
        onSaved: (newValue) => widget.onSaved?.call(newValue),
        validator: (value) => widget.validator?.call(value),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            borderSide: BorderSide(
                color: AppColorScheme.of(context).black.withOpacity(0.5)),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.calendar_month_outlined),
            onPressed: () {
              _showDatePickerDialog();
            },
          ),
          suffixIconColor: AppColorScheme.of(context).gray,
          label: Text(
            widget.label,
            style: AppTextStyles.of(context).grayFormLabel,
          ),
        ),
      ),
    );
  }
}
