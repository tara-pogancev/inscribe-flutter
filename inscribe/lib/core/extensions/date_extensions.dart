import 'package:intl/intl.dart';

const dateFormat = "dd MMM yyyy";
const timeOfDayFormat = "HH:mm";
const fullDateTimeFormat = "dd MMM yy, HH:mm";
const fullDateTimeFormatNoYear = "dd MMM, HH:mm";
const monthCalendarHeader = "MMM yyyy";

extension DateExtensions on DateTime {
  String formatString() {
    return DateFormat(dateFormat).format(this);
  }

  String formatTimeOfDayString() {
    return DateFormat(
      timeOfDayFormat,
    ).format(this);
  }

  String formatFullDateTimeString() {
    return DateFormat(fullDateTimeFormat).format(this);
  }

  String formatFullDateTimeNoYearString() {
    return DateFormat(fullDateTimeFormatNoYear).format(this);
  }

  String formatMonthCalendarHeaderString() {
    return DateFormat(monthCalendarHeader).format(this);
  }

  //*
  // Chceks if an event is in a defined month radius from the passed date.
  // For example, if the date is current, and the radius is 1 month, all events
  // from last, current and next month will pass the check.
  // */
  bool isInMonthsRadius(DateTime centerDate, int eventsVisibleInMonthsRadius) {
    DateTime startDate =
        centerDate.add(Duration(days: -(eventsVisibleInMonthsRadius * 30)));

    DateTime endDate =
        centerDate.add(Duration(days: (eventsVisibleInMonthsRadius * 30)));

    // Check if the event date is within the start and end date range
    return isAfter(startDate) && isBefore(endDate);
  }

  bool isInMonthsRadiusDisregardingYear(
      DateTime centerDate, int eventsVisibleInMonthsRadius) {
    DateTime startDate =
        centerDate.add(Duration(days: -(eventsVisibleInMonthsRadius * 30)));

    DateTime endDate =
        centerDate.add(Duration(days: (eventsVisibleInMonthsRadius * 30)));

    DateTime dateInCurrentYear = copyWith(year: centerDate.year);
    DateTime dateInNextYear = copyWith(year: centerDate.year + 1);

    return (dateInCurrentYear.isAfter(startDate) &&
            dateInCurrentYear.isBefore(endDate)) ||
        (dateInNextYear.isAfter(startDate) && dateInNextYear.isBefore(endDate));
  }
}

extension StringDateExtensions on String {
  DateTime parseDateString() {
    return DateFormat(dateFormat).parse(this);
  }
}
