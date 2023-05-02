// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names

// Package
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Widget&Class
import '../class/list.dart';
import '../constants.dart';
import 'Kanji_Screen.dart';

int rankLength = 0;
Future<KanjiList> fetchBookList() async {
  final response = await http.get(Uri.parse(kanjiLink));
  if (response.statusCode == 200) {
    return KanjiList.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('失敗! x.x');
  }
}

class Kanji extends StatefulWidget {
  @override
  State<Kanji> createState() => _KanjiState();
}

class _KanjiState extends State<Kanji> {
  late Future<KanjiList> kanjiList;

  @override
  void initState() {
    super.initState();
    kanjiList = fetchBookList();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabbar = [];
    List<Widget> kanjiTable = [];

    return FutureBuilder<KanjiList>(
      future: kanjiList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          rankLength = snapshot.data!.data.length;
          for (int n = 0; n < rankLength; n++) {
            kanjiTable.add(
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Table(
                    border: TableBorder.all(width: 0.5),
                    children: List.generate(
                      snapshot.data!.data[n]["contents"].length / 4 -
                                  (snapshot.data!.data[n]["contents"].length /
                                          4)
                                      .toInt() >
                              0.0
                          ? (snapshot.data!.data[n]["contents"].length / 4)
                                  .toInt() +
                              1
                          : (snapshot.data!.data[n]["contents"].length / 4)
                              .toInt(),
                      (rowindex) => TableRow(
                        children: List.generate(
                          4,
                          (colindex) => GestureDetector(
                            child: snapshot.data!.data[n]["contents"].length >
                                    (4 * rowindex) + colindex
                                ? SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "${snapshot.data!.data[n]["contents"][(4 * rowindex) + colindex]["kanji"]}",
                                          style: tableJpStyle,
                                        ),
                                        Text(
                                            snapshot.data!.data[n]["contents"][
                                                            (4 * rowindex) +
                                                                colindex]
                                                        ["second_onreading"] !=
                                                    null
                                                ? "${snapshot.data!.data[n]["contents"][(4 * rowindex) + colindex]["onreading"]} "
                                                    "${snapshot.data!.data[n]["contents"][(4 * rowindex) + colindex]["kunreading"]}*"
                                                : "${snapshot.data!.data[n]["contents"][(4 * rowindex) + colindex]["onreading"]} "
                                                    "${snapshot.data!.data[n]["contents"][(4 * rowindex) + colindex]["kunreading"]}",
                                            style: tableKrStyle),
                                      ],
                                    ),
                                  )
                                : Text(""),
                            onTap: () {
                              List<String> kanji = [
                                snapshot.data!.data[n]["contents"]
                                    [(4 * rowindex) + colindex]["kanji"],
                                snapshot.data!.data[n]["contents"]
                                    [(4 * rowindex) + colindex]["onreading"],
                                snapshot.data!.data[n]["contents"]
                                    [(4 * rowindex) + colindex]["kunreading"],
                              ];
                              if (snapshot.data!.data[n]["contents"]
                                          [(4 * rowindex) + colindex]
                                      ["second_onreading"] !=
                                  null) {
                                kanji.add(snapshot.data!.data[n]["contents"]
                                        [(4 * rowindex) + colindex]
                                    ["second_onreading"]);
                                kanji.add(snapshot.data!.data[n]["contents"]
                                        [(4 * rowindex) + colindex]
                                    ["second_kunreading"]);
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return KanjiScreen(kanjiContent: kanji);
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          for (int n = 0; n < rankLength; n++) {
            tabbar.add(
              Tab(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    snapshot.data!.data[n]["rank"],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            );
          }
          return DefaultTabController(
            initialIndex: 0,
            length: rankLength,
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
              body: TabBarView(
                children: kanjiTable,
              ),
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
