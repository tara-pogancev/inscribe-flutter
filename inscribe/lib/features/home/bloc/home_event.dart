part of 'home_bloc.dart';

sealed class HomeEvent {}

class HomeFetchEvent extends HomeEvent {}

class HomeToggleView extends HomeEvent {}

class HomeFilterBySearch extends HomeEvent {
  String? searchText;
  HomeFilterBySearch({
    required this.searchText,
  });
}
