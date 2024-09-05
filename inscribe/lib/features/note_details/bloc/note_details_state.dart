part of 'note_details_bloc.dart';

class NoteDetailsState {
  final bool isLoading;
  final Note note;
  final Note? initialNote;
  final bool isSuccess;
  final bool isDeleted;
  final bool hasChanges;

  NoteDetailsState({
    this.isLoading = false,
    this.note = const Note(),
    this.initialNote,
    this.isSuccess = false,
    this.isDeleted = false,
    this.hasChanges = false,
  });

  NoteDetailsState copyWith({
    bool? isLoading,
    Note? note,
    Note? initialNote,
    bool? isSuccess,
    bool? isDeleted,
    bool? hasChanges,
    bool? isValidateForm,
  }) {
    return NoteDetailsState(
      isLoading: isLoading ?? this.isLoading,
      note: note ?? this.note,
      initialNote: initialNote ?? this.initialNote,
      isSuccess: isSuccess ?? this.isSuccess,
      isDeleted: isDeleted ?? this.isDeleted,
      hasChanges: hasChanges ?? this.hasChanges,
    );
  }
}
