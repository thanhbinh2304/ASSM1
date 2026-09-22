import 'package:flutter/material.dart';

class AppStructureDemo extends StatefulWidget {
  const AppStructureDemo({super.key});

  @override
  State<AppStructureDemo> createState() => _AppStructureDemoState();
}

class _AppStructureDemoState extends State<AppStructureDemo> {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme() {
    setState(() {
      themeMode = isDarkMode
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: themeMode,

      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 4'),
          actions: [
            IconButton(
              onPressed: toggleTheme,
              icon: Icon(
                isDarkMode
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
            ),
          ],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isDarkMode
                    ? Icons.dark_mode
                    : Icons.light_mode,
                size: 80,
              ),

              const SizedBox(height: 16),

              Text(
                isDarkMode
                    ? 'Dark Mode'
                    : 'Light Mode',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Tap the button in the AppBar to change theme.',
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('FAB clicked!'),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}