part of 'new_note_bloc.dart';

class NewNoteState {
  final bool isLoading;
  final Note note;

  NewNoteState({
    this.isLoading = false,
    this.note = const Note(),
  });

  NewNoteState copyWith({
    bool? isLoading,
    Note? note,
  }) {
    return NewNoteState(
      isLoading: isLoading ?? this.isLoading,
      note: note ?? this.note,
    );
  }
}
