part of 'calendar_cubit.dart';

class CalendarState {
  final List<NoteReminder> events;
  final List<CalendarEventData> visibleEvents;
  final List<Note> notes;

  const CalendarState({
    this.events = const [],
    this.visibleEvents = const [],
    this.notes = const [],
  });

  CalendarState copyWith({
    List<NoteReminder>? events,
    List<CalendarEventData>? visibleEvents,
    List<Note>? notes,
  }) {
    return CalendarState(
      events: events ?? this.events,
      visibleEvents: visibleEvents ?? this.visibleEvents,
      notes: notes ?? this.notes,
    );
  }
}
