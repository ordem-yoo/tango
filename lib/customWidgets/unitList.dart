// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

// Packages
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//constants
import '../class/class.dart';
import '../constants.dart';
import '../screen/tango_Screen.dart';

Future<BookList> fetchBookList() async {
  final response = await http.get(Uri.parse(link));

  if (response.statusCode == 200) {
    return BookList.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load unit');
  }
}

class UnitList extends StatefulWidget {
  int unitTitleNumber;
  UnitList({required this.unitTitleNumber});

  @override
  State<UnitList> createState() => _UnitListState(unitNumber: unitTitleNumber);
}

class _UnitListState extends State<UnitList> {
  late Future<BookList> bookList;
  int unitNumber;
  _UnitListState({required this.unitNumber});

  @override
  void initState() {
    super.initState();
    bookList = fetchBookList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BookList>(
      future: bookList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data!.book[unitNumber]["unit"].length,
              itemBuilder: (BuildContext context, int unitIndex) {
                return Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: ListTile(
                    horizontalTitleGap: 3.5,
                    contentPadding: EdgeInsets.only(left: 4.0),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "${unitIndex + 1}",
                        textAlign: TextAlign.center,
                        style: listNum,
                      ),
                    ),
                    title: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        snapshot.data!.book[unitNumber]["unit"][unitIndex]
                            ["title"],
                        style: listJp,
                      ),
                    ),
                    subtitle: snapshot.data!.book[unitNumber]["unit"][unitIndex]
                                ["subtitle"] !=
                            null
                        ? Text(
                            snapshot.data!.book[unitNumber]["unit"][unitIndex]
                                ["subtitle"],
                            style: listKr)
                        : null,
                    trailing: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        autofocus: true,
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffB5D99C),
                        ),
                        child: Text(
                          '暗記',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Tango(
                                unitnumber: unitNumber, indexNumber: unitIndex);
                          }));
                        },
                      ),
                    ),
                  ),
                );
              });
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return Center(
          child: CircularProgressIndicator(
            color: Color(0xffB5D99C),
          ),
        );
      },
    );
  }
}
