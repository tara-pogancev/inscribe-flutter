import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class FetchNotesUseCase extends UseCase {
  Future<List<Note>> call() async {
    return await notesRepository.getNotes();
  }
}
