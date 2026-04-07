import 'package:bloc_flutter/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_flutter/bloc/switch/switch_bloc.dart';
import 'package:bloc_flutter/bloc/todo/todo_bloc.dart';
import 'package:bloc_flutter/ui/image_picker/image_picker_screen.dart';
import 'package:bloc_flutter/ui/switch_example/switch_example_screen.dart';
import 'package:bloc_flutter/ui/todo/to_do_screen.dart';
import 'package:bloc_flutter/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'bloc/counter/counter_bloc.dart';
import 'equatable_testing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => SwitchBloc()),
        BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtils())),
        BlocProvider(create: (_) => ToDoBloc()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          ),
          home: ToDoScreen()
      ),
    );
  }
}











// import 'package:bloc_flutter/bloc/switch/switch_bloc.dart';
// import 'package:bloc_flutter/ui/switch_example_screen.dart';
// import 'package:flutter/material.dart';
// import 'bloc/counter/counter_bloc.dart';
// import 'equatable_testing.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CounterBloc(),
//       child: BlocProvider(
//         create: (context) => SwitchBloc(),
//         child: MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               colorScheme: .fromSeed(seedColor: Colors.deepPurple),
//             ),
//             home: SwitchExampleScreen()
//         ),
//       ),
//     );
//   }
// }
//
