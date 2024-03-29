// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

// Package
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Widget&Class
import '../customWidgets/unitList.dart';
import '../class/list.dart';
import '../constants.dart';

int unitLength = 0;
Future<BookList> fetchBookList() async {
  final response = await http.get(Uri.parse(tangoLink));
  if (response.statusCode == 200) {
    return BookList.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('失敗! x.x');
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
    List<Widget> tabbar = [];
    List<Widget> unitList = [];

    return FutureBuilder<BookList>(
      future: bookList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          unitLength = snapshot.data!.book.length;
          for (int n = 0; n < unitLength; n++) {
            unitList.add(
              UnitList(unitTitleNumber: n),
            );
          }
          for (int n = 0; n < unitLength; n++) {
            tabbar.add(
              Tab(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  snapshot.data!.book[n]["booktitle"],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              )),
            );
          }
          return DefaultTabController(
            length: unitLength,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xffb5d99c),
                flexibleSpace: SafeArea(
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    dividerColor: Color(0xffB5D99C),
                    isScrollable: true,
                    indicatorColor: Colors.green,
                    tabs: tabbar,
                  ),
                ),
              ),
              body: TabBarView(children: unitList),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return Center(
          child: CircularProgressIndicator(
            color: Colors.transparent,
          ),
        );
      },
    );
  }
}
