// Theme-1

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
      ),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Management')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text('Welcome Students!', style: TextStyle(fontSize: 25)),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text('View Students'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(onPressed: () {}, child: const Text('Add Student')),
          ],
        ),
      ),
    );
  }
}

// Theme-2
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: const Text('Text Styling')),

        body: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text(
                'Flutter Course',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Welcome to our Flutter learning program.',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),

              const SizedBox(height: 15),

              const Text(
                'This is italic text',
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),

              const SizedBox(height: 15),

              const Text(
                'Underlined Text',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  color: Colors.green,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Line Through Text',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.lineThrough,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Custom Font Family',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

// Theme-3
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),

        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),

          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),

          bodyLarge: TextStyle(fontSize: 18),
        ),
      ),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Example')),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Welcome Students',
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 15),

            Text(
              'Flutter Development Course',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 15),

            Text(
              'Learn Flutter step by step.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Start Learning'),
            ),
          ],
        ),
      ),
    );
  }
}
*/

// Theme-4
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(title: const Text('Theme Switcher')),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode, size: 80),

              const SizedBox(height: 20),

              Text(
                isDarkMode ? 'Dark Mode Enabled' : 'Light Mode Enabled',

                style: const TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },

                child: Text(
                  isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
