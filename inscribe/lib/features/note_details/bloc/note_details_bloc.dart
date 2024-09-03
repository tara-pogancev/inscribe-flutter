import 'dart:io';

import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/note_type.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/domain/app_bloc.dart';
import 'package:inscribe/features/note_details/usecases/add_or_update_note_reminder_usecase.dart';
import 'package:inscribe/features/note_details/usecases/archive_note_usecase.dart';
import 'package:inscribe/features/note_details/usecases/get_note_by_id_usecase.dart';
import 'package:inscribe/features/note_details/usecases/save_note_usecase.dart';
import 'package:inscribe/features/note_details/usecases/update_note_usecase.dart';

part 'note_details_event.dart';
part 'note_details_state.dart';

class NoteDetailsBloc extends AppBloc<NoteDetailsEvent, NoteDetailsState> {
  final saveNoteUseCase = SaveNoteUseCase();
  final updateNoteUseCase = UpdateNoteUseCase();
  final archiveNoteUseCase = ArchiveNoteUseCase();
  final addOrUpdateNoteReminderUseCase = AddOrUpdateNoteReminderUseCase();
  final getNoteByIdUseCase = GetNoteByIdUsecase();

  NoteDetailsBloc() : super(NoteDetailsState()) {
    on<SaveNoteEvent>((event, emit) {
      if (state.note.id == null) {
        saveNoteUseCase(state.note);
      } else {
        updateNoteUseCase(state.note);
      }
      emit(state.copyWith(isSuccess: true));
      emit(NoteDetailsState());
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
    });

    on<UpdateGalleryImage>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(galleryImage: event.image?.uri)));
    });

    on<UpdateAssetImage>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(assetImage: event.assetImage)));
    });

    on<CreateOrUpdateReminderEvent>((event, emit) async {
      add(RegisterChanges());

      final reminder = event.reminder;
      final updatedNote = addOrUpdateNoteReminderUseCase(state.note, reminder);

      emit(state.copyWith(note: updatedNote));
    });

    on<DeleteReminderEvent>((event, emit) async {
      add(RegisterChanges());

      final reminder = event.reminder;

      final reminders = List<NoteReminder>.from(state.note.reminders);
      reminders.removeWhere((r) => r.id == reminder.id);

      final updatedNote = state.note.copyWith(reminders: reminders);

      emit(state.copyWith(note: updatedNote));
    });

    on<RegisterChanges>((event, emit) async {
      if (!state.hasChanges) {
        emit(state.copyWith(hasChanges: true));
      }
    });
  }

  Note getNoteById(String noteId) {
    return getNoteByIdUseCase(noteId);
  }
}
