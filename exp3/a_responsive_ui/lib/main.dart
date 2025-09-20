import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive UI'),
        ),
        body: const ResponsiveHomePage(),
      ),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.phone_android, size: 80, color: Colors.blue),
            Text("Mobile Layout", style: TextStyle(fontSize: 24)),
          ],
        ),
      );
    } else if (screenWidth < 1200) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.tablet, size: 80, color: Colors.green),
            SizedBox(width: 20),
            Text("Tablet Layout", style: TextStyle(fontSize: 28)),
          ],
        ),
      );
    } else {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.desktop_windows, size: 80, color: Colors.purple),
            SizedBox(width: 20),
            Text("Desktop Layout", style: TextStyle(fontSize: 32)),
          ],
        ),
      );
    }
  }
}
