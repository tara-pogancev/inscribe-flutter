part of 'delete_note_bloc.dart';

@immutable
sealed class DeleteNoteEvent {}

class ArchiveNote extends DeleteNoteEvent {
  final Note note;
  ArchiveNote({
    required this.note,
  });
}

class UndoArchive extends DeleteNoteEvent {}
