import 'package:flutter/material.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/form_fields/app_form_field.dart';
import 'package:intl/intl.dart';

class AppDateFormField extends StatefulWidget {
  const AppDateFormField({
    Key? key,
    required this.label,
    this.onSaved,
    this.validator,
  }) : super(key: key);

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

  void showDatePickerDialog() async {
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
    return DateFormat('dd MMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: formFieldBottomPadding),
      child: TextFormField(
        controller: _dateController,
        enabled: false,
        keyboardType: TextInputType.none,
        onSaved: (newValue) => widget.onSaved?.call(newValue),
        validator: (value) => widget.validator?.call(value),
        decoration: InputDecoration(
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: AppColorScheme.of(context).black.withOpacity(0.5)),
            ),
            suffixIcon: const Icon(Icons.calendar_month_outlined),
            suffixIconColor: AppColorScheme.of(context).gray,
            label: Text(
              widget.label,
              style: AppTextStyles.of(context).grayFormLabel,
            )),
      ),
    );
  }
}
