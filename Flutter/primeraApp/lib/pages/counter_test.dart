import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 3;

  void incrementCounter() {
    setState(() {
      counter++;
      print(counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter test app'),
      ),
      body: Center(
        child: Text(
          'Counter value is: $counter',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementCounter();
        },
      ),
    );
  }
}
