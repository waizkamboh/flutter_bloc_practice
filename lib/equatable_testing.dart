import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
             Person person = Person(name: 'waiz', age: 20);
             Person person1 = Person(name: 'waiz', age: 20);
             print(person == person1);
             print(person == person);
             print(person.hashCode.toString());
             print(person1.hashCode.toString());

          }
      ),
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [name, age];
}