part of 'new_note_bloc.dart';

class NewNoteState {
  final bool isLoading;
  final Note note;
  final Note? initialNote;
  final bool isSuccess;
  final bool isDeleted;
  final bool hasChanges;

  NewNoteState({
    this.isLoading = false,
    this.note = const Note(),
    this.initialNote,
    this.isSuccess = false,
    this.isDeleted = false,
    this.hasChanges = false,
  });

  NewNoteState copyWith({
    bool? isLoading,
    Note? note,
    Note? initialNote,
    bool? isSuccess,
    bool? isDeleted,
    bool? hasChanges,
    bool? isValidateForm,
  }) {
    return NewNoteState(
      isLoading: isLoading ?? this.isLoading,
      note: note ?? this.note,
      initialNote: initialNote ?? this.initialNote,
      isSuccess: isSuccess ?? this.isSuccess,
      isDeleted: isDeleted ?? this.isDeleted,
      hasChanges: hasChanges ?? this.hasChanges,
    );
  }
}
