import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Stateless Widget Example
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful vs Stateless',
      home: Scaffold(
        backgroundColor: Colors.blue, // 🔵 Blue Background
        appBar: AppBar(
          title: Text("Stateless vs Stateful"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is a Stateless Widget",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              CounterWidget(), // Stateful widget
            ],
          ),
        ),
      ),
    );
  }
}

// Stateful Widget Example
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Count: $count",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("Increment"),
        ),
      ],
    );
  }
}
