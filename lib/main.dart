import 'package:flutter/material.dart';

import 'core_widgets_demo.dart';
import 'input_controls_demo.dart';
import 'layout_basics_demo.dart';
import 'app_structure_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Exercises'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // Exercise 1
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const CoreWidgetsDemo(),
                  ),
                );
              },
              child: const Text(
                'Exercise 1 - Core Widgets',
              ),
            ),

            const SizedBox(height: 12),

            // Exercise 2
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const InputControlsDemo(),
                  ),
                );
              },
              child: const Text(
                'Exercise 2 - Input Controls',
              ),
            ),

            const SizedBox(height: 12),

            // Exercise 3
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const LayoutBasicsDemo(),
                  ),
                );
              },
              child: const Text(
                'Exercise 3 - Layout Basics',
              ),
            ),

            const SizedBox(height: 12),

            // Exercise 4
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const AppStructureDemo(),
                  ),
                );
              },
              child: const Text(
                'Exercise 4 - App Structure',
              ),
            ),
          ],
        ),
      ),
    );
  }
}