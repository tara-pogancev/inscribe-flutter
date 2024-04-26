import 'package:flutter/material.dart';
import 'package:inscribe/core/i18n/strings.g.dart';

extension FieldValidationExtensions on String? {
  String? isRequired(BuildContext context) {
    return (this == null || this!.isEmpty)
        ? Translations.of(context).errorMessages.mandatory_field
        : null;
  }
}
