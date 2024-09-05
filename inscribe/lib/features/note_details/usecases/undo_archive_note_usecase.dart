import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/usecase.dart';

class UndoArchiveNoteUseCase extends UseCase {
  Future<void> call(Note note) async {
    final noteToUpdate =
        note.copyWith(isDeleted: false, updatedAt: DateTime.now());
    return notesRepository.updateNote(noteToUpdate);
  }
}
