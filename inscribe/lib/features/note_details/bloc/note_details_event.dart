part of 'note_details_bloc.dart';

class NoteDetailsEvent {}

class UpdateNoteEvent extends NoteDetailsEvent {
  final Note note;
  UpdateNoteEvent({
    required this.note,
  });
}

class SaveNoteEvent extends NoteDetailsEvent {}

class ToggleNotePinEvent extends NoteDetailsEvent {}

class UpdateNoteNameEvent extends NoteDetailsEvent {
  final String noteName;
  UpdateNoteNameEvent({
    required this.noteName,
  });
}

class UpdateNoteDescriptionEvent extends NoteDetailsEvent {
  final String noteDescription;
  UpdateNoteDescriptionEvent({
    required this.noteDescription,
  });
}

class UpdateNoteTypeEvent extends NoteDetailsEvent {
  final NoteType noteType;
  UpdateNoteTypeEvent({
    required this.noteType,
  });
}

class UpdateDateOfBirthEvent extends NoteDetailsEvent {
  final DateTime dateOfBirth;
  UpdateDateOfBirthEvent({
    required this.dateOfBirth,
  });
}

class UpdateGiftIdeasEvent extends NoteDetailsEvent {
  final String giftIdeas;
  UpdateGiftIdeasEvent({
    required this.giftIdeas,
  });
}

class UpdateGalleryImage extends NoteDetailsEvent {
  final File? image;
  UpdateGalleryImage({
    required this.image,
  });
}

class UpdateAssetImage extends NoteDetailsEvent {
  final String assetImage;
  UpdateAssetImage({
    required this.assetImage,
  });
}

class RegisterChanges extends NoteDetailsEvent {}

class CreateOrUpdateReminderEvent extends NoteDetailsEvent {
  final NoteReminder reminder;
  CreateOrUpdateReminderEvent({
    required this.reminder,
  });
}

class DeleteReminderEvent extends NoteDetailsEvent {
  final NoteReminder reminder;
  DeleteReminderEvent({
    required this.reminder,
  });
}
