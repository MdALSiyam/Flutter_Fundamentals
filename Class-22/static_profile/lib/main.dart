import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Static Profile Page',
      theme: ThemeData(
        // Custom Fonts
        fontFamily: 'Poppins',
        // Theme Customization
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Layout
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        // Row Column
        child: Column(
          children: [
            // Image
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/Siyam.jpg'),
            ),
            const SizedBox(height: 10),
            const Text(
              'MD. Abdul Latif Siyam',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flutter Developer | Dhaka',
              style: TextStyle(color: Colors.teal),
            ),
            const SizedBox(height: 15),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('1. Dart'),
                    Text('2. Flutter'),
                    Text('3. App'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Profile Information',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('1. Batch : 02'),
                    Text('2. Roll : 12'),
                    Text('3. Address : Dhaka'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.email, color: Colors.teal, size: 20),
                    SizedBox(width: 10),
                    Text('siyam.dev@example.com'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
