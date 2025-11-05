import 'package:flutter/material.dart';

class Exp10B extends StatefulWidget {
  const Exp10B({super.key});

  @override
  State<Exp10B> createState() => _Exp10BState();
}

class _Exp10BState extends State<Exp10B> {
  String? name; // 👈 Intentional null bug

  @override
  void initState() {
    super.initState();
    debugPrint("App started – name is currently $name");
  }

  void _fixBug() {
    setState(() {
      name = "Flutter Debugging Fixed!";
      debugPrint("Bug fixed – name updated to: $name");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        title: const Text('10(b) Debugging Example'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '🧩 Flutter Debugging Example',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              const SizedBox(height: 30),
              // Buggy Widget Simulation
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  name ?? "⚠️ Null Value Detected – Name is missing!",
                  style: const TextStyle(
                      fontSize: 18, color: Colors.red, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: _fixBug,
                icon: const Icon(Icons.bug_report),
                label: const Text("Fix Bug"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  name != null
                      ? "✅ Fixed Output: $name"
                      : "🧠 Hint: Check console logs using debugPrint()",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
