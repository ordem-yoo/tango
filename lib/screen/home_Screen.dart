// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors

// Package
import 'package:flutter/material.dart';
import 'package:tango/screen/list_Screen.dart';

// Dart file
import '../constants.dart';
import 'kana_Screen.dart';

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
            Padding(
              padding: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffE65F5c),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  child: Text("単語暗記", style: homeButton),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BookInfo();
                    }));
                  },
                ),
              ),
            ),
            // Button 2
            Padding(
              padding: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffE65F5c),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  child: Text("仮名", style: homeButton),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Kana();
                    }));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
