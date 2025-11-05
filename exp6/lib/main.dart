import 'package:flutter/material.dart';
import '6a.dart'; // Importing Experiment 6(a)
// ignore: unused_import
import '6b.dart'; // For later part

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Exp6aScreen(), // 🔹 Directly open 6(a)
    );
  }
}
