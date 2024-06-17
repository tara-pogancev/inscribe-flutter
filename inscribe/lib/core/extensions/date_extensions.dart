import 'package:intl/intl.dart';

const dateFormat = "dd MMM yyyy";

extension DateExtensions on DateTime {
  String formatString() {
    return DateFormat(dateFormat).format(this);
  }
}

extension StringDateExtensions on String {
  DateTime parseDateString() {
    return DateFormat(dateFormat).parse(this);
  }
}
