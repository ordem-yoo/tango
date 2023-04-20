// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// gist link
String link = "https://ordem-yoo.github.io/data/tango.json";

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
final tableTabStyle = TextStyle(
    color: Colors.white, fontSize: 25, fontFamily: 'ZenKakuGothicAntique');
final tableJpStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);
final tableKrStyle =
    TextStyle(fontSize: 25, fontFamily: 'ZenKakuGothicAntique');

// Book List Widget
final listJpStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold, height: 1.5);
final listKrStyle = TextStyle(fontWeight: FontWeight.bold);
final listNumStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

// Tango List
final kanjiStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
final ganaKanaStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
final pronunciationStyle =
    TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold);
final koreanStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
