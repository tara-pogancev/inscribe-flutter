part of 'delete_note_bloc.dart';

class DeleteNoteState {
  final Note? lastDeletedNote;
  final bool isDeleted;

  DeleteNoteState({
    this.lastDeletedNote,
    this.isDeleted = false,
  });

  DeleteNoteState copyWith({
    Note? lastDeletedNote,
    bool? isDeleted,
  }) {
    return DeleteNoteState(
      lastDeletedNote: lastDeletedNote ?? this.lastDeletedNote,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }
}
