import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6b());
}

class MyApp6b extends StatelessWidget {
  final ThemeData customTheme = ThemeData(
    primarySwatch: Colors.teal,
    scaffoldBackgroundColor: Colors.teal.shade50,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16.0, color: Colors.grey),
      titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theming Example',
      theme: customTheme,
      home: const ThemedHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ThemedHomePage extends StatelessWidget {
  const ThemedHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theming Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Themed App',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              'This text uses custom body style',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Styled Button'),
            ),
          ],
        ),
      ),
    );
  }
}
