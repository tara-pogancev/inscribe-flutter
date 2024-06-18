part of 'new_note_bloc.dart';

class NewNoteState {
  final bool isLoading;
  final Note note;
  final bool isSuccess;
  final bool isDeleted;

  NewNoteState({
    this.isLoading = false,
    this.note = const Note(),
    this.isSuccess = false,
    this.isDeleted = false,
  });

  NewNoteState copyWith({
    bool? isLoading,
    Note? note,
    bool? isSuccess,
    bool? isDeleted,
  }) {
    return NewNoteState(
      isLoading: isLoading ?? this.isLoading,
      note: note ?? this.note,
      isSuccess: isSuccess ?? this.isSuccess,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }
}
