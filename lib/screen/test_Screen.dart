// ignore_for_file: file_names, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tango/constants.dart';

class TestScreen extends StatefulWidget {
  TestScreen(String title, {super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  var title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "mondai",
                style: kanjiStyle,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextButton(
                      child: Text("11111111111111111"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextButton(
                      child: Text("11111111111111111"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextButton(
                      child: Text("11111111111111111"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextButton(
                      child: Text("11111111111111111"),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// "単語 → 韓国語"
// "漢字 → 韓国語"
// "韓国語 → 漢字"
