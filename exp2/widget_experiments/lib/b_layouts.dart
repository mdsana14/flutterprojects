import 'package:flutter/material.dart';

void main() {
  runApp(MyLayoutsApp());
}

class MyLayoutsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Experiment B - Layouts")),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.green),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text("First Line"),
                Text("Second Line"),
                Text("Third Line"),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 200, height: 200, color: Colors.yellow),
                Container(width: 150, height: 150, color: Colors.orange),
                Text("Stack Example", style: TextStyle(fontSize: 18, color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
