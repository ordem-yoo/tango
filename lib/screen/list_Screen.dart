// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

// Package
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Widget&Class
import 'package:tango/customWidgets/unitList.dart';
import '../class/class.dart';

Future<BookList> fetchBookList() async {
  final response = await http.get(Uri.parse(
      'https://gist.githubusercontent.com/ordem-yoo/d1b67b895f3d2ae163422a395e3e5801/raw/3c9d7c8a0ed958b9ba8fd8ee9d42e6483387c82e/tango.json'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return BookList.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class BookInfo extends StatefulWidget {
  @override
  State<BookInfo> createState() => _BookInfoState();
}

class _BookInfoState extends State<BookInfo> {
  late Future<BookList> bookList;

  @override
  void initState() {
    super.initState();
    bookList = fetchBookList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffB5D99C),
          flexibleSpace: SafeArea(
            child: FutureBuilder<BookList>(
                future: bookList,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return TabBar(
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                            child: Text(bookList.toString(),
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'ZenKakuGothicAntique'))),
                        Tab(
                            child: Text('下券',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'ZenKakuGothicAntique'))),
                        Tab(
                            child: Text('N4·5',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'ZenKakuGothicAntique'))),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return CircularProgressIndicator();
                }),
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
