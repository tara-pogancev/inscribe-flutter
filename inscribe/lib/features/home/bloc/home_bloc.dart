import 'package:bloc/bloc.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/domain/repositories/shared_preference_repository.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/features/home/usecases/fetch_notes_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final fetchNotesUseCase = FetchNotesUseCase();
  final SharedPreferencesRepository sharedPreferencesRepository = IC.getIt();

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
          filteredPinnedNotes: pinnedNotes));
    });

    on<HomeToggleView>((event, emit) {
      sharedPreferencesRepository.setIsGridPreferedView(!state.isGridView);
      emit(state.copyWith(isGridView: !state.isGridView));
    });

    add(HomeFetchEvent());
  }
}
