// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors

// Package
import 'package:flutter/material.dart';

// Page
import 'hiragata.dart';
import 'booklist.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D2671),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "単語",
              style: TextStyle(
                color: Color(0xffFAFFD1),
                fontSize: 80,
              ),
            ),
            Text(
              "Tango",
              style: TextStyle(
                color: Color(0xffFAFFD1),
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
                    color: Color(0xffFAFFD1),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  child: Text(
                    "単語暗記",
                    style: TextStyle(
                        color: Color(0xff19547b),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BookList();
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
                    color: Color(0xffFAFFD1),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  child: Text(
                    "ひらがな  カタカナ",
                    style: TextStyle(
                        color: Color(0xff19547b),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HiraGata();
                    }));
                  },
                ),
              ),
            ),
            // Button 3
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
            //   child: Container(
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(15)),
            //     child: TextButton(
            //       child: Text(
            //         "単語暗記",
            //         style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             letterSpacing: 5.0),
            //       ),
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
