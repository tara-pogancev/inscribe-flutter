part of 'calendar_cubit.dart';

class CalendarState {
  final List<NoteReminder> events;
  final List<CalendarEventData> visibleEvents;

  const CalendarState({this.events = const [], this.visibleEvents = const []});

  CalendarState copyWith({
    List<NoteReminder>? events,
    List<CalendarEventData>? visibleEvents,
  }) {
    return CalendarState(
      events: events ?? this.events,
      visibleEvents: visibleEvents ?? this.visibleEvents,
    );
  }
}
