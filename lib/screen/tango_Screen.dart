// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names, unused_import, must_be_immutable

// Packages
import 'package:flutter/material.dart';
import 'package:tango/constants.dart';
import 'package:tango/screen/list_Screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Widget&Class
import '../class/class.dart';

Future<BookList> fetchBookList() async {
  final response = await http.get(Uri.parse(link));

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

class Tango extends StatefulWidget {
  int unitnumber, indexNumber;

  Tango({required this.unitnumber, required this.indexNumber});
  @override
  State<Tango> createState() =>
      _TangoState(unitNumber: unitnumber, unitIndex: indexNumber);
}

class _TangoState extends State<Tango> {
  late Future<BookList> bookList;
  int? unitNumber, unitIndex;
  int tangoNumber = 0;

  _TangoState({required this.unitNumber, this.unitIndex});

  @override
  void initState() {
    super.initState();
    bookList = fetchBookList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<BookList>(
            future: bookList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var tangoJson = snapshot.data!.book[unitNumber]["unit"]
                    [unitIndex!]["tango"];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 30.0, horizontal: 30.0),
                            child: Text(
                              tangoJson[tangoNumber]["kanji"]
                                  .replaceAll('を', 'を '),
                              style: kanji,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 30.0, horizontal: 40.0),
                            child: tangoJson[tangoNumber]["hiragana"] != null
                                ? Text(
                                    tangoJson[tangoNumber]["hiragana"],
                                    style: hiragana,
                                    textAlign: TextAlign.center,
                                  )
                                : null,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 30.0, horizontal: 40.0),
                            child: Text(
                              tangoJson[tangoNumber]["pronunciation"],
                              style: pronunciation,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 30.0, horizontal: 50.0),
                            child: Text(
                              tangoJson[tangoNumber]["korean"]
                                  .replaceAll(', ', '\n'),
                              style: korean,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffB5D99C),
                              ),
                              child: Text(
                                '前の単語',
                                style: textColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (tangoNumber == 0) {
                                    tangoNumber = tangoJson.length - 1;
                                  } else {
                                    tangoNumber--;
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffB5D99C),
                              ),
                              child: Text(
                                '次の単語',
                                style: textColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (tangoNumber == tangoJson.length - 1) {
                                    tangoNumber = 0;
                                  } else {
                                    tangoNumber++;
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
