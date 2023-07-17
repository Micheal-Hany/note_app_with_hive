import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change ------> $change');
    super.onChange(bloc, change);
  }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   debugPrint('transition ------> $transition');
  //   super.onTransition(bloc, transition);
  // }
}
