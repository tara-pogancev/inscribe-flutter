import 'dart:io';

import 'package:inscribe/core/data/model/note/note.dart';
import 'package:inscribe/core/data/model/note_type.dart';
import 'package:inscribe/core/data/model/reminder/note_reminder.dart';
import 'package:inscribe/core/domain/model/app_bloc.dart';
import 'package:inscribe/features/new_note/usecases/add_or_update_note_reminder_usecase.dart';
import 'package:inscribe/features/new_note/usecases/archive_note_usecase.dart';
import 'package:inscribe/features/new_note/usecases/save_note_usecase.dart';
import 'package:inscribe/features/new_note/usecases/update_note_usecase.dart';

part 'new_note_event.dart';
part 'new_note_state.dart';

class NewNoteBloc extends AppBloc<NewNoteEvent, NewNoteState> {
  final saveNoteUseCase = SaveNoteUseCase();
  final updateNoteUseCase = UpdateNoteUseCase();
  final archiveNoteUseCase = ArchiveNoteUseCase();
  final addOrUpdateNoteReminderUsecase = AddOrUpdateNoteReminderUsecase();

  NewNoteBloc() : super(NewNoteState()) {
    on<SaveNoteEvent>((event, emit) async {
      if (state.note.id == null) {
        await saveNoteUseCase(state.note);
      } else {
       await updateNoteUseCase(state.note);
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
    });

    on<UpdateGalleryImage>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(galleryImage: event.image?.uri ?? null)));
    });

    on<UpdateAssetImage>((event, emit) async {
      emit(state.copyWith(
          note: state.note.copyWith(assetImage: event.assetImage)));
    });

    on<CreateOrUpdateReminderEvent>((event, emit) async {
      add(RegisterChanges());

      final reminder = event.reminder;
      final updatedNote = addOrUpdateNoteReminderUsecase(state.note, reminder);

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
}
