import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/usecase.dart';

class FetchNotesUseCase extends UseCase {
  List<Note> call() {
    final notes = notesRepository.getNotes();
    final filteredNotes =
        notes.where((element) => element.isDeleted == false).toList();
    filteredNotes.sort((a, b) => (a.createdAt ??
            DateTime.fromMicrosecondsSinceEpoch(0))
        .compareTo((b.createdAt ?? DateTime.fromMicrosecondsSinceEpoch(0))));
    return filteredNotes;
  }
}
