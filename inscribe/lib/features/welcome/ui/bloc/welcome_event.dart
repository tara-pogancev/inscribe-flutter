part of 'welcome_bloc.dart';

sealed class WelcomeEvent {}

class FinishFirstRunEvent extends WelcomeEvent {}
