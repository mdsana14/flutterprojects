import 'package:flutter/material.dart';
import '10b.dart'; // Importing Experiment 10(b)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exp10B(), // 👈 Running 10(b)
    );
  }
}
