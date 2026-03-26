import 'package:bloc_flutter/ui/switch_example_screen.dart';
import 'package:flutter/material.dart';
import 'bloc/counter/counter_bloc.dart';
import 'equatable_testing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterBloc(),
       child: MaterialApp(
           debugShowCheckedModeBanner: false,
           title: 'Flutter Demo',
           theme: ThemeData(
             colorScheme: .fromSeed(seedColor: Colors.deepPurple),
           ),
           home: SwitchExampleScreen()
       ),
    );
  }
}

