import 'package:bloc/bloc.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/data/repositories/notes/notes_repository.dart';
import 'package:inscribe/core/injection_container.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  final NotesRepository notesRepository = IC.getIt();

  CalendarCubit() : super(const CalendarState()) {
    initState();
  }

  void initState() async {
    final events = notesRepository.getAllReminders();

    emit(CalendarState(events: events));
  }
}
