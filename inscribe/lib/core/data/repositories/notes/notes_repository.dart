import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';

abstract class NotesRepository {
  List<Note> getNotes();

  void updateNote(Note note);
  
  void deleteNote(Note note);

  void addNote(Note note);

  void deleteNoteList(List<Note> notesToDelete);

  List<NoteReminder> getRemindersForNote(Note note);

  void updateNoteReminders(List<NoteReminder> newReminders, Note note);

  void deleteAndCancelReminder(NoteReminder reminder);

  void addAndScheduleReminder(NoteReminder reminder);

  Note getNoteById(String noteId);

  List<NoteReminder> getAllReminders();
}
