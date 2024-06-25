import 'package:inscribe/core/data/model/note/note.dart';

abstract class NotesRepository {
  Future<List<Note>> getNotes();

  void updateNote(Note note);

  Future<void> deleteNote(Note note);

  void addNote(Note note);

  Future<void> deleteNoteList(List<Note> notesToDelete);
}
