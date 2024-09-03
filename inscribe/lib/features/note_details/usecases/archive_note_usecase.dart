import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class ArchiveNoteUseCase extends UseCase {
  Future<void> call(Note note) async {
    final noteToDelete =
        note.copyWith(isDeleted: true, updatedAt: DateTime.now());
    return notesRepository.updateNote(noteToDelete);
  }
}
