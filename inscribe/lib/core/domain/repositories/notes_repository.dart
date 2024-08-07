import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';

abstract class NotesRepository {
  Future<List<Note>> getNotes();

  Future<void> updateNote(Note note);

  Future<void> deleteNote(Note note);

  Future<void> addNote(Note note);

  Future<void> deleteNoteList(List<Note> notesToDelete);

  Future<List<NoteReminder>> getRemindersForNote(note);

  Future<void> updateNoteReminders(List<NoteReminder> newReminders, Note note);

  Future<void> deleteReminder(NoteReminder reminder);

  Future<void> addReminder(NoteReminder reminder);
}
