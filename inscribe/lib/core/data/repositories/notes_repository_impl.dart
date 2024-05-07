import 'package:hive/hive.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/repositories/notes_repository.dart';

const hiveNotesBox = "notes";

class NotesRepositoryImpl implements NotesRepository {
  final Box notesBox;

  NotesRepositoryImpl({
    required this.notesBox,
  });

  @override
  void deleteNote(Note note) async {
    await notesBox.delete(note.id);
  }

  @override
  Future<List<Note>> getNotes() async {
    List<Note> notes = [];
    final notesFromBox =
        notesBox.values.map((e) => e.cast<String, dynamic>()).toList();
    for (var note in notesFromBox) {
      notes.add(Note.fromJson(note));
    }
    return notes;
  }

  @override
  void addNote(Note note) async {
    await notesBox.put(note.id, note.toJson());
  }

  @override
  void updateNote(Note note) async {
    await notesBox.put(note.id, note.toJson());
  }
}
