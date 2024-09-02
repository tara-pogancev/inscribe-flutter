import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/extensions/string_extensions.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:intl/intl.dart';

const dateFormat = "dd MMM yyyy";
const timeOfDayFormat = "HH:mm";
const fullDateTimeFormat = "dd MMM yy, HH:mm";
const fullDateTimeFormatNoYear = "dd MMM, HH:mm";
const monthCalendarHeader = "MMMM, yyyy";
const dayCalendarHeader = "E";

extension DateExtensions on DateTime {
  String _getLocaleCode() {
    return IC.getIt<SharedPreferencesRepository>().getLocaleCode() ?? "en";
  }

  String formatString() {
    return DateFormat(dateFormat, _getLocaleCode()).format(this);
  }

  String formatTimeOfDayString() {
    return DateFormat(timeOfDayFormat, _getLocaleCode()).format(this);
  }

  String formatFullDateTimeString() {
    return DateFormat(fullDateTimeFormat, _getLocaleCode()).format(this);
  }

  String formatFullDateTimeNoYearString() {
    return DateFormat(fullDateTimeFormatNoYear, _getLocaleCode()).format(this);
  }

  String formatMonthCalendarHeaderString() {
    return DateFormat(monthCalendarHeader, _getLocaleCode())
        .format(this)
        .capitalizeFirstLetter();
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
  String _getLocaleCode() {
    return IC.getIt<SharedPreferencesRepository>().getLocaleCode() ?? "en";
  }

  DateTime parseDateString() {
    return DateFormat(dateFormat, _getLocaleCode()).parse(this);
  }
}

extension IntDateExtensions on int {
  String _getLocaleCode() {
    return IC.getIt<SharedPreferencesRepository>().getLocaleCode() ?? "en";
  }

  String formatDayCalendar() {
    DateTime dateTime = DateTime(1970, 1, 4 + this);
    return (DateFormat(dayCalendarHeader, _getLocaleCode()).format(dateTime))
        .substring(0, 1)
        .toUpperCase();
  }
}
