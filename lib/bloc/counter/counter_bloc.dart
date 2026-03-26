import 'package:bloc/bloc.dart';

import 'counter_events.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState>{
  CounterBloc():super(CounterState()) {
    on<IncrementCounterEvent> (_increment);
    on<DecrementCounterEvent> (_decrement);
  }

  void _increment(IncrementCounterEvent event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounterEvent event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter - 1));
  }

}