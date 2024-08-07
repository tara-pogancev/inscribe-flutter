import 'package:intl/intl.dart';

const dateFormat = "dd MMM yyyy";
const timeOfDayFormat = "HH:mm";
const fullDateTimeFormat = "dd MMM yy, HH:mm";
const fullDateTimeFormatNoYear = "dd MMM, HH:mm";

extension DateExtensions on DateTime {
  String formatString() {
    return DateFormat(dateFormat).format(this);
  }

  String formatTimeOfDayString() {
    return DateFormat(timeOfDayFormat).format(this);
  }

  String formatFullDateTimeString() {
    return DateFormat(fullDateTimeFormat).format(this);
  }

  String formatFullDateTimeNoYearString() {
    return DateFormat(fullDateTimeFormatNoYear).format(this);
  }
}

extension StringDateExtensions on String {
  DateTime parseDateString() {
    return DateFormat(dateFormat).parse(this);
  }
}
