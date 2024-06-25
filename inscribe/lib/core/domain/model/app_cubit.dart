import 'package:bloc/bloc.dart';

abstract class AppCubit<S> extends Cubit<S> {
  AppCubit(super.initialState);
}
