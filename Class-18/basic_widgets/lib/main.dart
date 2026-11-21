// Button Counter
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Counter')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter', style: const TextStyle(fontSize: 30)),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text('Increase'),
            ),

            OutlinedButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              child: const Text('Decrease'),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Text('Restart'),
            ),

            IconButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              icon: const Icon(Icons.add_outlined),
              iconSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}
*/

// Switch and Checkbox

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isEnrolled = false;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),

      body: Column(
        children: [
          CheckboxListTile(
            title: const Text('Course Enrollment'),
            subtitle: const Text('Confirm your enrollment'),
            value: isEnrolled,

            onChanged: (value) {
              setState(() {
                isEnrolled = value ?? false;
              });
            },
          ),

          SwitchListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Enable notifications'),
            value: notificationsEnabled,

            onChanged: (value) {
              setState(() {
                notificationsEnabled = value;
              });
            },
          ),

          const Divider(),

          Text(
            'Enrollment: ${isEnrolled ? "Confirmed" : "Not Confirmed"}',
            style: const TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 10),

          Text(
            'Notifications: ${notificationsEnabled ? "ON" : "OFF"}',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

// Input Field
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController nameController = TextEditingController();

  String message = 'Enter your name';

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Field')),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Student Name',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person_outlined),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  String name = nameController.text.trim();

                  message = name.isEmpty
                      ? 'Please enter your name'
                      : 'Welcome, $name!';
                });
              },
              child: const Text('Submit'),
            ),

            const SizedBox(height: 20),

            Text(
              message,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
*/
