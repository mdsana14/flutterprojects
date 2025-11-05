import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DisplayDataPage extends StatefulWidget {
  @override
  _DisplayDataPageState createState() => _DisplayDataPageState();
}

class _DisplayDataPageState extends State<DisplayDataPage> {
  List<dynamic> users = [];

  Future<void> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: const Text('Display API Data'),
        backgroundColor: Colors.green,
      ),
      body: users.isEmpty
          ? const Center(child: CircularProgressIndicator(color: Colors.green))
          : Center(
              child: SingleChildScrollView(
                child: Column(
                  children: users.map((user) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 25.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade200,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green.shade400,
                            radius: 16, // smaller
                            child: Text(
                              user['name'][0],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user['name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                                Text(user['email'],
                                    style: const TextStyle(fontSize: 12)),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
    );
  }
}
