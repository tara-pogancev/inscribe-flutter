import 'package:bloc/bloc.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/features/home/usecases/fetch_notes_usecase.dart';
import 'package:inscribe/features/new_note/usecases/update_note_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final fetchNotesUseCase = FetchNotesUseCase();
  final SharedPreferencesRepository sharedPreferencesRepository = IC.getIt();
  final updateNoteUseCase = UpdateNoteUseCase();

  HomeBloc() : super(HomeState()) {
    on<HomeFetchEvent>((event, emit) async {
      final notes = await fetchNotesUseCase();
      final isGridView = sharedPreferencesRepository.getIsGridPreferedView();

      final otherNotes = notes.where((note) => note.isPinned == false).toList();
      final pinnedNotes = notes.where((note) => note.isPinned == true).toList();

      emit(state.copyWith(
          notes: notes,
          isGridView: isGridView,
          filteredOtherdNotes: otherNotes,
          filteredPinnedNotes: pinnedNotes,
          isLoading: false));

      add(HomeFilterBySearch(searchText: state.searchText));
    });

    on<HomeToggleView>((event, emit) {
      sharedPreferencesRepository.setIsGridPreferedView(!state.isGridView);
      emit(state.copyWith(isGridView: !state.isGridView));
    });

    on<HomeFilterBySearch>((event, emit) {
      emit(state.copyWith(searchText: event.searchText));

      final allNotes = List<Note>.from(state.notes);

      final otherNotes = allNotes
          .where((note) =>
              note.isPinned == false &&
              note.isFilteredBySearchText(state.searchText))
          .toList();
      final pinnedNotes = allNotes
          .where((note) =>
              note.isPinned == true &&
              note.isFilteredBySearchText(state.searchText))
          .toList();

      emit(state.copyWith(
          filteredOtherdNotes: otherNotes, filteredPinnedNotes: pinnedNotes));
    });

    on<SwitchNotePinEvent>((event, emit) async {
      await updateNoteUseCase(
          event.note.copyWith(isPinned: !event.note.isPinned));
      add(HomeFetchEvent());
    });

    on<RefreshIsGridView>((event, emit) async {
      final isGridView = sharedPreferencesRepository.getIsGridPreferedView();
      emit(state.copyWith(isGridView: isGridView));
    });

    add(HomeFetchEvent());
  }
}
