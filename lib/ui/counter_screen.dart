import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter/counter_bloc.dart';
import '../bloc/counter/counter_events.dart';
import '../bloc/counter/counter_state.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state){
                  print(state.counter.toString());

                  return Text(state.counter.toString(), style: TextStyle(fontSize: 60),);

                }
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    print('buildI');
                    context.read<CounterBloc>().add(IncrementCounter());
               },
                  child: Text('Increment'),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: (){
                    print('buildD');
                    context.read<CounterBloc>().add(DecrementCounter());
                  },
                  child: Text('Decrement'),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
