import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Information'),
          backgroundColor: Colors.blueAccent,
        ),

        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  size: 70,
                  color: Colors.blue,
                ),

                const SizedBox(height: 15),

                const Text(
                  'Student Profile',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                const Text('Name: Siyam'),
                const SizedBox(height: 5),

                const Text('Age: 25'),

                const Text('Roll: 101'),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.email, color: Colors.blueAccent),
                    SizedBox(width: 8),
                    Text('siyam@example.com'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
