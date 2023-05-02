// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors

// Package
import 'package:flutter/material.dart';

// Dart file
import '../customWidgets/home_Screen_Button.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB5D99C),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "単語",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 80,
              ),
            ),
            Text(
              "Tango",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 25,
              ),
            ),
            SizedBox(height: 80),
            // Button 1
            menuButton("単語暗記", context),
            menuButton("漢字暗記", context),
            menuButton("仮名", context),
            menuButton("小テスト", context),
          ],
        ),
      ),
    );
  }
}
