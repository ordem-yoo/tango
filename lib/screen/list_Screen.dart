// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

// Package
import 'package:flutter/material.dart';
import 'package:tango/customWidgets/unitList.dart';
// Widget

class BookList extends StatefulWidget {
  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffB5D99C),
          flexibleSpace: SafeArea(
            child: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                    child: Text('上券',
                        style: TextStyle(
                            fontSize: 25, fontFamily: 'ZenKakuGothicAntique'))),
                Tab(
                    child: Text('下券',
                        style: TextStyle(
                            fontSize: 25, fontFamily: 'ZenKakuGothicAntique'))),
                Tab(
                    child: Text('N4·5',
                        style: TextStyle(
                            fontSize: 25, fontFamily: 'ZenKakuGothicAntique'))),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            UnitList(),
            UnitList(),
            UnitList(),
          ],
        ),
      ),
    );
  }
}
