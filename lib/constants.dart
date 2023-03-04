// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// gist link
String link =
    "https://gist.githubusercontent.com/ordem-yoo/d1b67b895f3d2ae163422a395e3e5801/raw/146f89b9060db20f0c2ce44634350d486668b160/tango.json";

// Color Palette

// home Screen
final homeButton = TextStyle(
    color: Color(0xffFFFFFF),
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 5.0);
final textColor =
    TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 5);

// Table Widget
final tableTab = TextStyle(
    color: Colors.white, fontSize: 25, fontFamily: 'ZenKakuGothicAntique');
final tableJp = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);
final tableKr = TextStyle(fontSize: 25, fontFamily: 'ZenKakuGothicAntique');

// Book List Widget
final listJp =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold, height: 1.5);
final listKr = TextStyle(fontWeight: FontWeight.bold);
final listNum = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

// Tango List
final kanji = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
final hiragana = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
final pronunciation =
    TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold);
final korean = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
