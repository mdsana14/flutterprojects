import 'package:flutter/material.dart';

void main() {
  runApp(MyWidgetsApp());
}

class MyWidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Experiment A - Widgets")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello Flutter!", style: TextStyle(fontSize: 24, color: Colors.blue)),
              SizedBox(height: 20),
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 100,
                color: Colors.amber,
                child: Center(child: Text("This is a Container")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
