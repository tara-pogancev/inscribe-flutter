import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/usecase.dart';
import 'package:inscribe/features/archive/usecases/fetch_archived_notes_usecase.dart';

class RestoreNoteUsecase extends UseCase {
  final fetchArchivedNotesUsecase = FetchArchivedNotesUsecase();

  Future<void> call(Note note) async {
    notesRepository
        .updateNote(note.copyWith(isDeleted: false, updatedAt: DateTime.now()));
  }
}
