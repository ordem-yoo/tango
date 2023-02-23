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
  final response = await http.get(Uri.parse(
      "https://gist.githubusercontent.com/ordem-yoo/d1b67b895f3d2ae163422a395e3e5801/raw/a1d8c38aa21f911b8e2883dde9317673af0c55fd/tango.json"));
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
                return ListTile(
                  horizontalTitleGap: 2.5,
                  contentPadding: EdgeInsets.only(left: 8.0),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${unitIndex + 1}",
                      textAlign: TextAlign.center,
                      style: listNum,
                    ),
                  ),
                  title: Text(
                    snapshot.data!.book[unitNumber]["unit"][unitIndex]["title"],
                    style: listJp,
                  ),
                  subtitle: Text(
                      snapshot.data!.book[unitNumber]["unit"][unitIndex]
                          ["subtitle"],
                      style: listKr),
                  trailing: TextButton(
                    autofocus: true,
                    child: Text('暗記'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Tango(
                            unitnumber: unitNumber, indexNumber: unitIndex);
                      }));
                    },
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
