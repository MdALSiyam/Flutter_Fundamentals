import 'package:flutter/material.dart';

// Image-1
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Student Image")),
        body: Center(
          child: Image.asset(
            'assets/images/Siyam.jpg',
            width: 300,
            height: 200,
          ),
        ),
      ),
    );
  }
}
*/

// Image-2
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Image Fit Demo")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("BoxFit Cover"),
              Container(
                width: 300,
                height: 150,
                color: Colors.grey,
                child: Image.asset(
                  'assets/images/Siyam.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              const Text("BoxFit Contain"),
              Container(
                width: 300,
                height: 150,
                color: Colors.grey,
                child: Image.asset(
                  'assets/images/Siyam.jpg',
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 20),

              const Text("BoxFit Fill"),
              Container(
                width: 300,
                height: 150,
                color: Colors.grey,
                child: Image.asset('assets/images/Siyam.jpg', fit: BoxFit.fill),
              ),

              const SizedBox(height: 20),

              const Text("BoxFit FitWidth"),
              Container(
                width: 300,
                height: 150,
                color: Colors.grey,
                child: Image.asset(
                  'assets/images/Siyam.jpg',
                  fit: BoxFit.fitWidth,
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

// Image-3
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Online Image")),
        body: Center(
          child: Image.network(
            'https://picsum.photos/400/300',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
*/

// Image-4
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Image Loading")),
        body: Center(
          child: Image.network(
            'https://picsum.photos/500/300',
            width: 300,
            height: 200,
            fit: BoxFit.cover,

            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }

              return const Center(child: CircularProgressIndicator());
            },

            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 300,
                height: 200,
                color: Colors.grey,
                child: const Center(child: Icon(Icons.broken_image, size: 50)),
              );
            },
          ),
        ),
      ),
    );
  }
}
*/

// Image-5
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Icons")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.home, size: 60, color: Colors.blue),

              SizedBox(height: 20),

              Icon(Icons.favorite, size: 60, color: Colors.red),

              SizedBox(height: 20),

              Icon(Icons.shopping_cart, size: 60, color: Colors.green),

              SizedBox(height: 20),

              Icon(Icons.person, size: 60, color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
*/

// Image-6
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IconScreen(),
    );
  }
}

class IconScreen extends StatefulWidget {
  const IconScreen({super.key});

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Icon Button")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Button clicked $counter times",
              style: const TextStyle(fontSize: 22),
            ),

            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              iconSize: 60,
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/

// Image-7
/*
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("SVG Logo")),
        body: Center(
          child: SvgPicture.asset(
            'assets/images/Flutter_logo.svg',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
*/

// Image-8
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Online SVG")),
        body: Center(
          child: SvgPicture.network(
            'https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg',
            width: 150,
            height: 150,
            placeholderBuilder: (context) => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
