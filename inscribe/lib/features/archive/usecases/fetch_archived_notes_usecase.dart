import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';

class FetchArchivedNotesUsecase extends UseCase {
  Future<List<Note>> call() async {
    final notes = await notesRepository.getNotes();
    final filteredNotes =
        notes.where((element) => element.isDeleted == true).toList();
    filteredNotes.sort((a, b) => (a.createdAt ??
            DateTime.fromMicrosecondsSinceEpoch(0))
        .compareTo((b.createdAt ?? DateTime.fromMicrosecondsSinceEpoch(0))));
    return filteredNotes;
  }
}
