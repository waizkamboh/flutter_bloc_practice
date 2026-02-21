import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class EquatableTesting extends StatelessWidget {
  const EquatableTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Person person = Person(name: 'waiz', age: 23);
            Person person1 = Person(name: 'waiz', age: 23);
            print(person == person1);
      }),
    );
  }
}


class Person extends Equatable{
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];

}

/* Flutter me by default ak instance sirf apne instance ke equal ho skta ha kise dosrye instnace ke equal nahi.
 person ka instance sirf person ke equal ho skta ha person ka instance person1 ke equal nahi ho skta value dono
 ki same ha lkin ya equal nahi ha kuo ke ke flutter in ko hash code assign karta ha dono ke hash code different
 ho ge is problem ko solve karnye ke liye hm Equatable package ka use kartye ha  */