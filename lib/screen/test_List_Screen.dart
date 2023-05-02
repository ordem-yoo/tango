// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:tango/constants.dart';

import '../customWidgets/test_Select_Button.dart';

class TangoTestList extends StatefulWidget {
  @override
  State<TangoTestList> createState() => _TangoTestListState();
}

class _TangoTestListState extends State<TangoTestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "クラス選択",
          style: rank_Select_Title,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffB5D99C),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                test_Select_Button("N4·5", Colors.deepOrange, context),
                test_Select_Button("N3", Colors.green, context),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                test_Select_Button("N2", Colors.pinkAccent, context),
                test_Select_Button("N1", Colors.greenAccent, context),
              ],
            ),
          )
        ],
      ),
    );
  }
}
