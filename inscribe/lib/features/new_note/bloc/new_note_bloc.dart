import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/note_type.dart';
import 'package:inscribe/core/domain/model/app_bloc.dart';
import 'package:inscribe/features/new_note/usecases/archive_note_usecase.dart';
import 'package:inscribe/features/new_note/usecases/save_note_usecase.dart';
import 'package:inscribe/features/new_note/usecases/update_note_usecase.dart';

part 'new_note_event.dart';
part 'new_note_state.dart';

class NewNoteBloc extends AppBloc<NewNoteEvent, NewNoteState> {
  final saveNoteUseCase = SaveNoteUseCase();
  final updateNoteUseCase = UpdateNoteUseCase();
  final archiveNoteUseCase = ArchiveNoteUseCase();

  NewNoteBloc() : super(NewNoteState()) {
    on<SaveNoteEvent>((event, emit) async {
      if (state.note.id == null) {
        await saveNoteUseCase(state.note);
      } else {
        updateNoteUseCase(state.note);
      }
      emit(state.copyWith(isSuccess: true));
      emit(NewNoteState());
    });

    on<UpdateNoteEvent>((event, emit) {
      emit(state.copyWith(note: event.note));
    });

    on<UpdateNoteNameEvent>((event, emit) {
      emit(state.copyWith(note: state.note.copyWith(name: event.noteName)));
    });

    on<UpdateNoteDescriptionEvent>((event, emit) {
      emit(state.copyWith(
          note: state.note.copyWith(description: event.noteDescription)));
    });

    on<UpdateNoteTypeEvent>((event, emit) {
      emit(state.copyWith(note: state.note.copyWith(type: event.noteType)));
    });

    on<UpdateDateOfBirthEvent>((event, emit) {
      emit(state.copyWith(
          note: state.note.copyWith(dateOfBirth: event.dateOfBirth)));
    });

    on<UpdateGiftIdeasEvent>((event, emit) {
      emit(state.copyWith(
          note: state.note.copyWith(giftIdeas: event.giftIdeas)));
    });

    on<ToggleNotePinEvent>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(isPinned: !state.note.isPinned)));
      if (state.note.id == null) {
        await saveNoteUseCase(state.note);
      } else {
        updateNoteUseCase(state.note);
      }
    });

    on<ArchiveNoteEvent>((event, emit) {
      if (state.note.id != null) {
        archiveNoteUseCase(state.note);
      }
      emit(state.copyWith(isDeleted: true));
      emit(NewNoteState());
    });
  }
}
