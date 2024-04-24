import 'package:bloc/bloc.dart';

abstract class AppBloc<T, S> extends Bloc<T, S> {
  AppBloc(super.initialState);
}
