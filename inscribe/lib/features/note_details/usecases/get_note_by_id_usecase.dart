import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class GetNoteByIdUsecase extends UseCase {
  Note call(String noteId)  {
    return notesRepository.getNoteById(noteId);
  }
}
