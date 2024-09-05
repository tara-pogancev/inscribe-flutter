import 'package:bloc/bloc.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:inscribe/core/data/model/calendar_event_metadata.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository.dart';
import 'package:inscribe/core/extensions/date_extensions.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/features/home/usecases/fetch_notes_usecase.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  final NotesRepository notesRepository = IC.getIt();
  final fetchNotesUseCase = FetchNotesUseCase();

  final eventsVisibleInMonthsRadius = 1;

  CalendarCubit() : super(const CalendarState()) {
    initState();
  }

  void initState() async {
    final events = notesRepository.getAllReminders();
    final notes = fetchNotesUseCase();

    emit(CalendarState(events: events, notes: notes));

    setVisibleEvents(DateTime.now());
  }

  void setVisibleEvents(DateTime centerDate) {
    final visibleEvents = <CalendarEventData>[];

    // One time events
    final visibleOneTimeEvents = state.events
        .where((e) =>
            !e.isAnual &&
            e.date.isInMonthsRadius(centerDate, eventsVisibleInMonthsRadius))
        .toList();

    visibleEvents.addAll(visibleOneTimeEvents
        .map(
          (e) => CalendarEventData(
            title: e.name,
            date: e.date,
            event: CalendarEventMetadata(
                type: CalendarEventType.oneTimeEvent, reminder: e),
          ),
        )
        .toList());

    // Repeated events
    final visibleRepeatedEvents = state.events
        .where((e) =>
            e.isAnual &&
            e.date.isInMonthsRadiusDisregardingYear(
                centerDate, eventsVisibleInMonthsRadius))
        .toList();

    visibleEvents.addAll(visibleRepeatedEvents
        .map(
          (e) => CalendarEventData(
            title: e.name,
            date: e.date.copyWith(year: centerDate.year),
            event: CalendarEventMetadata(
                type: CalendarEventType.anualEvent, reminder: e),
          ),
        )
        .toList());

    // Birthdays
    final visibleBirthdays = state.notes
        .where((e) =>
            e.dateOfBirth != null &&
            e.dateOfBirth!.isInMonthsRadiusDisregardingYear(
                centerDate, eventsVisibleInMonthsRadius))
        .toList();

    visibleEvents.addAll(visibleBirthdays
        .map(
          (e) => CalendarEventData(
            title: e.name,
            date: e.dateOfBirth!.copyWith(year: centerDate.year),
            event: CalendarEventMetadata(
                type: CalendarEventType.birthday, note: e),
          ),
        )
        .toList());

    emit(state.copyWith(visibleEvents: visibleEvents));
  }
}
