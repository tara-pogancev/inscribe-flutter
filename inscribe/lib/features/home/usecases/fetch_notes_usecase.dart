import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class FetchNotesUseCase extends UseCase {
  Future<List<Note>> call() async {
    final notes = await notesRepository.getNotes();
    notes.sort((a, b) => (a.updatedAt ?? DateTime.fromMicrosecondsSinceEpoch(0))
        .compareTo((b.updatedAt ?? DateTime.fromMicrosecondsSinceEpoch(0))));
    return notes;
  }
}
