import 'package:bloc/bloc.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository.dart';
import 'package:inscribe/core/injection_container.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  final NotesRepository notesRepository = IC.getIt();

  final eventsVisibleInMonthsRadius = 1;

  CalendarCubit() : super(const CalendarState()) {
    initState();
  }

  void initState() async {
    final events = notesRepository.getAllReminders();
    emit(CalendarState(events: events));

    setVisibleEvents(DateTime.now());
  }

  void setVisibleEvents(DateTime centerDate) {
    final visibleEvents = <CalendarEventData>[];

    final visibleOneTimeEvents = state.events.where((e) => !e.isAnual && e.isInMonthsRadius(centerDate, eventsVisibleInMonthsRadius)).toList();

    visibleEvents.addAll(visibleOneTimeEvents
        .map((e) => CalendarEventData(
            title: e.name, date: e.date, description: e.noteId))
        .toList());

    final visibleRepeatedEvents =
        state.events.where((e) => !e.isAnual).toList();

    visibleEvents.addAll(visibleRepeatedEvents
        .map((e) => CalendarEventData(
            title: e.name,
            date: e.date.copyWith(year: centerDate.year),
            description: e.noteId))
        .toList());

    emit(state.copyWith(visibleEvents: visibleEvents));
  }
}
