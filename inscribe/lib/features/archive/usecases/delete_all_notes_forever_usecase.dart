import 'package:inscribe/core/domain/model/usecase.dart';
import 'package:inscribe/features/archive/usecases/fetch_archived_notes_usecase.dart';

class DeleteAllNotesForeverUsecase extends UseCase {
  final fetchArchivedNotesUsecase = FetchArchivedNotesUsecase();

  Future<void> call() async {
    await notesRepository.deleteNoteList(await fetchArchivedNotesUsecase());
  }
}
