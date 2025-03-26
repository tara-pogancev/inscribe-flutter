import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/usecase.dart';

class DeleteNoteForeverUsecase extends UseCase {
  void call(Note note)  {
     notesRepository.deleteNote(note);
  }
}
