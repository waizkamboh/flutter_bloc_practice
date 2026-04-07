import 'package:flutter/material.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index) {
           return ListTile(
             leading: Text(index.toString(), style: TextStyle(fontSize: 20),),
             trailing: IconButton(
               icon: Icon(Icons.delete),
               onPressed: () {

               },
             ),
           );
          }
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
