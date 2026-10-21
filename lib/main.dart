import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // build function is a render method in flutter
  // context parameter provides access to runtime variables like screen size, ratio, font scaling etc.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('eqdm - versatile music player!')),
      ),
    );
  }
}
