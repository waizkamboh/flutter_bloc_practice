import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {

  int count = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
       centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count.toString(), style: TextStyle(fontSize: 40),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                  },
                  child: Text('Increment'),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    count--;

                  });
                },
                child: Text('Decrement'),
              ),
            ],
          )
        ],
      ),

    );
  }
}
