// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  SimpleBlocObserver({this.shouldPrintDebugInfo = false});

  final bool shouldPrintDebugInfo;

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode && shouldPrintDebugInfo) {
      print(transition);
    }
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode && shouldPrintDebugInfo) {
      print(change);
    }
    super.onChange(bloc, change);
  }
}
