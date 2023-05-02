// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tango/screen/kana_Screen.dart';

import '../Screen/kanji_List_Screen.dart';
import '../constants.dart';
import '../screen/list_Screen.dart';
import '../screen/test_List_Screen.dart';

Padding menuButton(String menuname, BuildContext context) {
  return Padding(
    padding: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffE65F5c), borderRadius: BorderRadius.circular(15)),
      child: TextButton(
        child: Text(menuname, style: homeButton),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                if (menuname == "単語暗記") {
                  return BookInfo();
                } else if (menuname == "漢字暗記") {
                  return Kanji();
                } else if (menuname == "仮名") {
                  return Kana();
                } else {
                  return TangoTestList();
                }
              },
            ),
          );
        },
      ),
    ),
  );
}
