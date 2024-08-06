part of 'new_note_bloc.dart';

class NewNoteEvent {}

class UpdateNoteEvent extends NewNoteEvent {
  final Note note;
  UpdateNoteEvent({
    required this.note,
  });
}

class SaveNoteEvent extends NewNoteEvent {}

class ToggleNotePinEvent extends NewNoteEvent {}

class UpdateNoteNameEvent extends NewNoteEvent {
  final String noteName;
  UpdateNoteNameEvent({
    required this.noteName,
  });
}

class UpdateNoteDescriptionEvent extends NewNoteEvent {
  final String noteDescription;
  UpdateNoteDescriptionEvent({
    required this.noteDescription,
  });
}

class UpdateNoteTypeEvent extends NewNoteEvent {
  final NoteType noteType;
  UpdateNoteTypeEvent({
    required this.noteType,
  });
}

class UpdateDateOfBirthEvent extends NewNoteEvent {
  final DateTime dateOfBirth;
  UpdateDateOfBirthEvent({
    required this.dateOfBirth,
  });
}

class UpdateGiftIdeasEvent extends NewNoteEvent {
  final String giftIdeas;
  UpdateGiftIdeasEvent({
    required this.giftIdeas,
  });
}

class UpdateGalleryImage extends NewNoteEvent {
  final File? image;
  UpdateGalleryImage({
    required this.image,
  });
}

class UpdateAssetImage extends NewNoteEvent {
  final String assetImage;
  UpdateAssetImage({
    required this.assetImage,
  });
}

class RegisterChanges extends NewNoteEvent {}

class CreateOrUpdateReminderEvent extends NewNoteEvent {
  final NoteReminder reminder;
  CreateOrUpdateReminderEvent({
    required this.reminder,
  });
}
