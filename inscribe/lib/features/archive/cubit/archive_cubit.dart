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
  final _fetchArchivedNotesUsecase = FetchArchivedNotesUsecase();
  final _deleteAllNotesForeverUseCase = DeleteAllNotesForeverUsecase();
  final _deleteNoteForeverUseCase = DeleteNoteForeverUsecase();
  final _restoreNoteUsecase = RestoreNoteUsecase();
  final SharedPreferencesRepository _sharedPreferencesRepository = IC.getIt();

  ArchiveCubit() : super(ArchiveState()) {
    final isGridView = _sharedPreferencesRepository.getIsGridPreferedView();
    emit(state.copyWith(isGridView: isGridView));
    fetchArchivedNotes();
  }

  void fetchArchivedNotes() async {
    emit(state.copyWith(isLoading: true));
    final notes = await _fetchArchivedNotesUsecase();
    emit(state.copyWith(isLoading: false, notes: notes));
  }

  void deleteAllNotesForever() async {
    await _deleteAllNotesForeverUseCase();
    fetchArchivedNotes();
  }

  void deleteNote(Note note) async {
    await _deleteNoteForeverUseCase(note);
    fetchArchivedNotes();
  }

  void restoreNote(Note note) async {
    await _restoreNoteUsecase(note);
    fetchArchivedNotes();
  }

  void refreshIsGridView() {
    final isGridView = _sharedPreferencesRepository.getIsGridPreferedView();
    emit(state.copyWith(isGridView: isGridView));
  }
}
