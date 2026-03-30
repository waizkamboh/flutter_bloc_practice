import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable{
  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class EnableOrDiableNotificationEvent extends SwitchEvent {}

class SliderEvent extends SwitchEvent {
  double opacity;
  SliderEvent({required this.opacity});

  List<Object> get props => [opacity];
}