import 'package:inscribe/core/domain/model/usecase.dart';
import 'package:inscribe/features/archive/usecases/fetch_archived_notes_usecase.dart';

class DeleteAllNotesForeverUsecase extends UseCase {
  final fetchArchivedNotesUsecase = FetchArchivedNotesUsecase();

  void call() {
    notesRepository.deleteNoteList(fetchArchivedNotesUsecase());
  }
}
