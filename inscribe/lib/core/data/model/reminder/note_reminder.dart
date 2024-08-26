import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_reminder.freezed.dart';
part 'note_reminder.g.dart';

@unfreezed
class NoteReminder with _$NoteReminder {
  factory NoteReminder({
    @Default(null) String? id,
    @Default(null) String? noteId,
    required String name,
    required DateTime date,
    @Default(false) bool isAnual,
  }) = _NoteReminder;

  const NoteReminder._();

  factory NoteReminder.fromJson(Map<String, dynamic> json) =>
      _$NoteReminderFromJson(json);

  //*
  // Chceks if an event is in a defined month radius from the passed date.
  // For example, if the date is current, and the radius is 1 month, all events
  // from last, current and next month will pass the check.
  // */
  bool isInMonthsRadius(DateTime centerDate, int eventsVisibleInMonthsRadius) {
    DateTime startDate = DateTime(
      centerDate.year,
      centerDate.month - eventsVisibleInMonthsRadius,
      centerDate.day,
    );

    DateTime endDate = DateTime(
      centerDate.year,
      centerDate.month + eventsVisibleInMonthsRadius,
      centerDate.day,
    );

    // Check if the event date is within the start and end date range
    return date.isAfter(startDate) && date.isBefore(endDate);
  }
}
