part of 'home_bloc.dart';

class HomeState {
  final List<Note> notes;
  final List<Note> filteredNotes;

  HomeState({
    this.notes = const [],
    this.filteredNotes = const [],
  });

  HomeState copyWith({
    List<Note>? notes,
    List<Note>? filteredNotes,
  }) {
    return HomeState(
      notes: notes ?? this.notes,
      filteredNotes: filteredNotes ?? this.filteredNotes,
    );
  }
}
