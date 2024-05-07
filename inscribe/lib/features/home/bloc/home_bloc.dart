import 'package:bloc/bloc.dart';
import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/features/home/usecases/fetch_notes_usecase.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final fetchNotesUseCase = FetchNotesUseCase();

  HomeBloc() : super(HomeState()) {
    on<HomeFetchEvent>((event, emit) async {
      final notes = await fetchNotesUseCase();
      emit(state.copyWith(notes: notes, filteredNotes: notes));
    });
  }
}
