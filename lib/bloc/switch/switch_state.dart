import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  bool isSwitch;
  final double opacity;
  SwitchState({this.isSwitch = false, this.opacity = 1.0});

  SwitchState copyWith({bool? isSwitch, double? opacity}) {
    return SwitchState(
        isSwitch: isSwitch ?? this.isSwitch,
        opacity:  opacity ?? this.opacity,
    );
  }

  @override
  List<Object?> get props => [isSwitch, opacity];
}
