import 'package:flutter/material.dart';
// import '9a.dart'; // For Experiment 9(a)
import '9b.dart';   // For Experiment 9(b)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Fetch Experiments',
      theme: ThemeData(primarySwatch: Colors.green),
      // ✅ Change home below to switch between experiments
      home: DisplayDataPage(),  // for 9(b)
      // home: FetchDataPage(), // for 9(a)
      debugShowCheckedModeBanner: false,
    );
  }
}
