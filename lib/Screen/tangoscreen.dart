// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_const_constructors

// Package
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Constants
import 'package:tango/constants.dart';

// Widgets
import '../Widgets/widgets.dart';

Future<Post> fetchPost() async {
  Uri();

  final response = await http.get(Uri.parse(
      "https://gist.githubusercontent.com/ordem-yoo/d1b67b895f3d2ae163422a395e3e5801/raw/aeb2e1b1cbe09bf6252b88e7ab865d7016b68bec/tango.json"));

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class Post {
  int booklist;
  int unitNumber;
  int tangoNumber;
  String japanese;
  String hiragata;
  String pronunciation;
  String korean;

  Post({
    required this.booklist,
    required this.unitNumber,
    required this.tangoNumber,
    required this.japanese,
    required this.hiragata,
    required this.pronunciation,
    required this.korean,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      booklist: json['book'],
      unitNumber: json['book'][0],
      tangoNumber: json['book']['unitNumber']['tangoNumber'],
      japanese: json['book']['unitNumber']['tangoNumber']['japanese'],
      hiragata: json['book']['unitNumber']['tangoNumber']['hiragata'],
      pronunciation: json['book']['unitNumber']['tangoNumber']['pronuncitaion'],
      korean: json['book']['unitNumber']['tangoNumber']['korean'],
    );
  }
}

class TangoScreen extends StatefulWidget {
  @override
  State<TangoScreen> createState() => _TangoScreenState();
}

class _TangoScreenState extends State<TangoScreen> {
  late Future<Post> post;
  int tangoNumber = 0;
  int selectedUnitNumber = 0;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: FutureBuilder<Post>(
          future: post,
          builder: (context, snapshot) {
            Widget tangoList() {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      tangoContainer(
                          snapshot, japanese, 9, tangoNumber, "japanese"),
                      tangoContainer(
                          snapshot, hiragata, 9, tangoNumber, "hiragata"),
                      tangoContainer(snapshot, pronunciation, 9, tangoNumber,
                          "pronunciation"),
                      tangoContainer(
                          snapshot, korean, 9, tangoNumber, "korean"),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff1D2671),
                        ),
                        child: Text(
                          '前の単語',
                          style: textColor,
                        ),
                        onPressed: () {
                          setState(() {
                            if (tangoNumber == 0) {
                              tangoNumber =
                                  (snapshot.data?.booklist[9].length) - 1;
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff1D2671),
                        ),
                        child: Text(
                          '次の単語',
                          style: textColor,
                        ),
                        onPressed: () {
                          setState(() {
                            if (tangoNumber ==
                                (snapshot.data?.booklist[9].length) - 1) {
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
              );
            }

            if (snapshot.hasData) {
              return tangoList();
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        )),
      ),
    );
  }
}
