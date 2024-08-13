import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class DeleteNoteForeverUsecase extends UseCase {
  void call(Note note)  {
     notesRepository.deleteNote(note);
  }
}
