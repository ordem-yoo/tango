// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

// gist link
String tangoLink = "https://ordem-yoo.github.io/data/tango.json";
String kanjiLink = "https://ordem-yoo.github.io/data/kanji.json";

// Color Palette
final tangoGreen = Color(0xffB5D99C);
final tangoOrange = Color(0xffE65F5c);

// Size

// home Screen
final homeButton = TextStyle(
    color: Color(0xffFFFFFF),
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 5.0);
final textColor = TextStyle(
    color: Colors.white,
    fontSize: 25,
    letterSpacing: 5,
    fontFamily: 'ZenKakuGothicAntique');

// Table Widget
final tableTabStyle = TextStyle(
    color: Colors.white, fontSize: 25, fontFamily: 'ZenKakuGothicAntique');
final tableJpStyle =
    TextStyle(fontSize: 80, fontFamily: 'ZenKakuGothicAntique');
final tableKrStyle =
    TextStyle(fontSize: 20, fontFamily: 'ZenKakuGothicAntique');
final tableKanjiStyle =
    TextStyle(fontSize: 150, fontFamily: 'ZenKakuGothicAntique');
final tableReadingStyle = TextStyle(
  fontSize: 50,
  fontFamily: "ZenKakuGothicAntique",
);

// Book List Widget
final listJpStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    height: 1.5,
    fontFamily: 'ZenKakuGothicAntique');
final listKrStyle =
    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'ZenKakuGothicAntique');
final listNumStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: 'ZenKakuGothicAntique');

// Tango List
final kanjiStyle = TextStyle(
  fontFamily: "ZenKakuGothicAntique",
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
final ganaKanaStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: 'ZenKakuGothicAntique');
final pronunciationStyle = TextStyle(
    color: Colors.grey,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontFamily: 'ZenKakuGothicAntique');
final koreanStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: 'ZenKakuGothicAntique');

// Test Button
final test_Select_Title = TextStyle(
    fontSize: 70,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'ZenKakuGothicAntique');

final rank_Select_Button = FilledButton.styleFrom(
  backgroundColor: Color(0xffB5D99C),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
);
final rank_Select_Title = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: 'ZenKakuGothicAntique');

final rank_Select_Alert =
    TextStyle(fontSize: 25, fontFamily: 'ZenKakuGothicAntique');
