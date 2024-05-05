part of 'new_note_bloc.dart';

class NewNoteState {
  final bool isLoading;
  final Note note;
  final bool isSuccess;

  NewNoteState({
    this.isLoading = false,
    this.isSuccess = false,
    this.note = const Note(),
  });

  NewNoteState copyWith({
    bool? isLoading,
    Note? note,
    bool? isSuccess,
  }) {
    return NewNoteState(
      isLoading: isLoading ?? this.isLoading,
      note: note ?? this.note,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
