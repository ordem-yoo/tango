// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

// Package
import 'package:flutter/material.dart';
// Page
import '../Widgets/kana.dart';

class HiraGata extends StatefulWidget {
  @override
  State<HiraGata> createState() => _HiraGataState();
}

class _HiraGataState extends State<HiraGata> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple[800],
            flexibleSpace: SafeArea(
              child: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                      child: Text('ひらがな',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'ZenKakuGothicAntique'))),
                  Tab(
                      child: Text('カタカナ',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'ZenKakuGothicAntique'))),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(child: HiraTable()),
              SingleChildScrollView(child: GataTable()),
            ],
          ),
        ),
      ),
    );
  }
}
