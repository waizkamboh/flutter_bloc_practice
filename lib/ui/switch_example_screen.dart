import 'package:bloc_flutter/bloc/switch/switch_bloc.dart';
import 'package:bloc_flutter/bloc/switch/switch_event.dart';
import 'package:bloc_flutter/bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchExampleScreen extends StatelessWidget {
  const SwitchExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Example'),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification'),
                BlocBuilder<SwitchBloc, SwitchState>(
                  buildWhen: (previous, current) => previous.isSwitch != current.isSwitch,
                    builder: (context, state){
                      print("Notification");
                      return  Switch(value: state.isSwitch, onChanged: (newValue){
                        print(newValue);
                        context.read<SwitchBloc>().add(EnableOrDiableNotificationEvent());
                      });

                    }
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen: (previous, current) => previous.opacity != current.opacity,
                builder: (context, state){
                  print("Slider");
                  return Container(
                    height: 200,
                    color: Colors.red.withOpacity(state.opacity),
                  );


                }
            ),

            SizedBox(
              height: 50,
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
                builder: (context, state){
                  return Slider(value: state.opacity, onChanged: (value){
                    debugPrint(value.toString());
                     context.read<SwitchBloc>().add(SliderEvent(opacity: value));
                  });


                }
            ),
          ],
        ),
      ),
    );
  }
}
