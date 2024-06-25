import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/model/app_cubit.dart';
import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/features/archive/usecases/delete_all_notes_forever_usecase.dart';
import 'package:inscribe/features/archive/usecases/delete_note_forever_usecase.dart';
import 'package:inscribe/features/archive/usecases/fetch_archived_notes_usecase.dart';
import 'package:inscribe/features/archive/usecases/restore_note_usecase.dart';

part 'archive_state.dart';

class ArchiveCubit extends AppCubit<ArchiveState> {
  final fetchArchivedNotesUsecase = FetchArchivedNotesUsecase();
  final deleteAllNotesForeverUseCase = DeleteAllNotesForeverUsecase();
  final deleteNoteForeverUseCase = DeleteNoteForeverUsecase();
  final restoreNoteUsecase = RestoreNoteUsecase();
  final SharedPreferencesRepository sharedPreferencesRepository = IC.getIt();

  ArchiveCubit() : super(ArchiveState()) {
    final isGridView = sharedPreferencesRepository.getIsGridPreferedView();
    emit(state.copyWith(isGridView: isGridView));
    fetchArchivedNotes();
  }

  void fetchArchivedNotes() async {
    emit(state.copyWith(isLoading: true));
    final notes = await fetchArchivedNotesUsecase();
    emit(state.copyWith(isLoading: false, notes: notes));
  }

  void deleteAllNotesForever() async {
    await deleteAllNotesForeverUseCase();
    fetchArchivedNotes();
  }

  void deleteNote(Note note) async {
    await deleteNoteForeverUseCase(note);
    fetchArchivedNotes();
  }

  void restoreNote(Note note) async {
    await restoreNoteUsecase(note);
    fetchArchivedNotes();
  }
}
