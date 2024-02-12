import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    //state++ doesn't work because state is a getter and can't be directly modified

    //Updates the [state] to the provided [state]. [emit] does nothing if the [state] being emitted is equal to the current [state].
    emit(state + 1);
  }
}
