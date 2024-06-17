import 'package:flutter/material.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';

class AppDateFormField extends StatefulWidget {
  const AppDateFormField(
      {super.key,
      required this.label,
      this.onSaved,
      this.validator,
      this.initialValue});

  final String label;
  final Function(String? value)? onSaved;
  final String? Function(String? value)? validator;
  final String? initialValue;

  @override
  State<AppDateFormField> createState() => _AppDateFormFieldState();
}

class _AppDateFormFieldState extends State<AppDateFormField> {
  final _dateController = TextEditingController();
  DateTime? _dateValue;

  @override
  void initState() {
    if (widget.initialValue != null) {
      _dateController.text = widget.initialValue!;
      _dateValue = (widget.initialValue!).parseDateString();
    }
    super.initState();
  }

  void _showDatePickerDialog() async {
    final DateTime? pickedDate = await showDatePicker(
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      context: context,
      initialDate: _dateValue,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      _dateController.text = pickedDate.formatString();
      _dateValue = pickedDate;
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
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
