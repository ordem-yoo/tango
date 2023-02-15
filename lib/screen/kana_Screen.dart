// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names

// Package
import 'package:flutter/material.dart';
import 'package:tango/constants.dart';

// Dart file
import '../customWidgets/table.dart';

class Kana extends StatefulWidget {
  @override
  State<Kana> createState() => _KanaState();
}

class _KanaState extends State<Kana> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffb5d99c),
          flexibleSpace: SafeArea(
            child: TabBar(
              indicatorColor: Color(0xffB5D99C),
              tabs: [
                Tab(child: Text('平仮名', style: tableTab)),
                Tab(child: Text('片仮名', style: tableTab)),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(child: hiraganaTable()),
            SingleChildScrollView(child: katakanaTable()),
          ],
        ),
      ),
    );
  }
}
