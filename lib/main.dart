// ignore_for_file: use_key_in_widget_constructors

// Package
import 'package:flutter/material.dart';

// Screen
import 'Screen/mainscreen.dart';

void main() {
  runApp(
    Home(),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
