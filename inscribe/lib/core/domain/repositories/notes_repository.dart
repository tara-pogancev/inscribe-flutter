import 'package:inscribe/core/data/model/note/note.dart';

abstract class NotesRepository {
  Future<List<Note>> getNotes();

  void updateNote(Note note);

  void deleteNote(Note note);

  void addNote(Note note);
}
