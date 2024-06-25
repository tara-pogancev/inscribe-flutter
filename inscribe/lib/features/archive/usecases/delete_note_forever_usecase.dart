import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class DeleteNoteForeverUsecase extends UseCase {
  Future<void> call(Note note) async {
    await notesRepository.deleteNote(note);
  }
}
