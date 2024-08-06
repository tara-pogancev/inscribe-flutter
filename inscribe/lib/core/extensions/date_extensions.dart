import 'package:intl/intl.dart';

const dateFormat = "dd MMM yyyy";
const timeOfDayFormat = "HH:mm";

extension DateExtensions on DateTime {
  String formatString() {
    return DateFormat(dateFormat).format(this);
  }

  String formatTimeOfDayString() {
    return DateFormat(timeOfDayFormat).format(this);
  }
}

extension StringDateExtensions on String {
  DateTime parseDateString() {
    return DateFormat(dateFormat).parse(this);
  }
}
