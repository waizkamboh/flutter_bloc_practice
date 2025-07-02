import 'package:flutter/material.dart';

class EquitableTesting extends StatelessWidget {
  const EquitableTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){}
      ),
    );
  }
}

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}