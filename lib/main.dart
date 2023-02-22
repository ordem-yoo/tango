// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// Package
import 'package:flutter/material.dart';

// Screen
import 'Screen/home_Screen.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
