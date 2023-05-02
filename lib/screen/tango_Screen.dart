// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names, unused_import, must_be_immutable

// Packages
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Widget&Class
import 'package:tango/constants.dart';
import 'package:tango/screen/list_Screen.dart';
import '../class/list.dart';

Future<BookList> fetchBookList() async {
  final response = await http.get(Uri.parse(tangoLink));

  if (response.statusCode == 200) {
    return BookList.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load unit');
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
  FlutterTts flutterTts = FlutterTts();

  late Future<BookList> bookList;
  int? unitNumber, unitIndex;
  int tangoNumber = 0;
  double volume = 0.8;
  double pitch = 1.0;
  double speechRate = 0.5;
  String langCode = "ja-JP";
  List<String>? languages;

  _TangoState({required this.unitNumber, this.unitIndex});

  @override
  void initState() {
    super.initState();
    bookList = fetchBookList();
    init();
  }

  void init() async {
    languages = List<String>.from(await flutterTts.getLanguages);
    setState(() {});
  }

  @override
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
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                tangoJson[tangoNumber]["kanji"]
                                    .replaceAll('を', 'を '),
                                style: kanjiStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: tangoJson[tangoNumber]["hiragana"] != null
                                ? Center(
                                    child: Text(
                                      tangoJson[tangoNumber]["hiragana"],
                                      style: ganaKanaStyle,
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                : Center(child: Text("")),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                tangoJson[tangoNumber]["pronunciation"],
                                style: pronunciationStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                tangoJson[tangoNumber]["korean"]
                                    .replaceAll(', ', '\n'),
                                style: koreanStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                                icon: Icon(Icons.volume_up_rounded, size: 40),
                                onPressed: () async {
                                  initSetting();
                                  await flutterTts
                                      .speak(tangoJson[tangoNumber]["kanji"]);
                                }),
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
                          height: 40,
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

  void initSetting() async {
    await flutterTts.setVolume(volume);
    await flutterTts.setPitch(pitch);
    await flutterTts.setSpeechRate(speechRate);
    await flutterTts.setLanguage(langCode);
  }
}
