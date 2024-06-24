part of 'archive_cubit.dart';

class ArchiveState {
  final List<Note> notes;
  final List<Note> filteredNotes;
  final bool isGridView;
  final bool isLoading;

  ArchiveState({
    this.notes = const [],
    this.filteredNotes = const [],
    this.isGridView = true,
    this.isLoading = false,
  });

  ArchiveState copyWith({
    List<Note>? notes,
    List<Note>? filteredNotes,
    bool? isGridView,
    bool? isLoading,
  }) {
    return ArchiveState(
      notes: notes ?? this.notes,
      filteredNotes: filteredNotes ?? this.filteredNotes,
      isGridView: isGridView ?? this.isGridView,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
