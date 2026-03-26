import 'package:bloc/bloc.dart';
import 'package:bloc_flutter/bloc/switch/switch_event.dart';
import 'package:bloc_flutter/bloc/switch/switch_state.dart';


class SwitchBloc extends Bloc<SwitchEvent, SwitchState>{
  SwitchBloc():super(SwitchState()){
    on<SwitchButton>(_switchButton);
  }

  void _switchButton(SwitchButton event, Emitter<SwitchState> emit){
    emit(state.copyWith(switchButton: state.switchButton));
  }
}