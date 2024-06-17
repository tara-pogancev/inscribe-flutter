part of 'home_bloc.dart';

class HomeState {
  final List<Note> notes;
  final List<Note> filteredOtherdNotes;
  final List<Note> filteredPinnedNotes;
  final bool isGridView;

  HomeState({
    this.notes = const [],
    this.filteredOtherdNotes = const [],
    this.filteredPinnedNotes = const [],
    this.isGridView = true,
  });

  HomeState copyWith({
    List<Note>? notes,
    List<Note>? filteredOtherdNotes,
    List<Note>? filteredPinnedNotes,
    bool? isGridView,
  }) {
    return HomeState(
      notes: notes ?? this.notes,
      filteredOtherdNotes: filteredOtherdNotes ?? this.filteredOtherdNotes,
      filteredPinnedNotes: filteredPinnedNotes ?? this.filteredPinnedNotes,
      isGridView: isGridView ?? this.isGridView,
    );
  }
}
