part of 'home_bloc.dart';

sealed class HomeEvent {}

class HomeFetchEvent extends HomeEvent {}

class HomeToggleView extends HomeEvent {}
