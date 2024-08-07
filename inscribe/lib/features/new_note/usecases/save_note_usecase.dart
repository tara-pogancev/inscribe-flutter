import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class SaveNoteUseCase extends UseCase {
  Future<void> call(Note note) async {
    final createdAt =
        (note.createdAt == null) ? DateTime.now() : note.createdAt;

    final noteId = note.id ?? uuid.v1();

    final noteToSave = note.copyWith(
        id: noteId, updatedAt: DateTime.now(), createdAt: createdAt);
    return notesRepository.addNote(noteToSave);
  }
}
