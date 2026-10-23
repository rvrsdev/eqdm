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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // hex colors syntax - 0xff<red,green,blue>
          backgroundColor: Color(0xFF252627),
          title: Text("eqdm - an open source music player"),
          centerTitle: true,
          foregroundColor: Color(0xfffaf9f6),
          // shape = border
          shape: Border(bottom: BorderSide(width: 1, color: Color(0xfafaf9f6))),
        ),
        body: Center(
          child: Text(
            "Hello world!",
            style: TextStyle(color: Color(0xfffaf9f6), fontSize: 55),
          ),
        ),
        backgroundColor: Color(0xff131515),
      ),
    );
  }
}
