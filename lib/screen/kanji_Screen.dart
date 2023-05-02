// ignore_for_file: file_names,, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kanji_drawing_animation/kanji_drawing_animation.dart';
import 'package:tango/constants.dart';

class KanjiScreen extends StatefulWidget {
  KanjiScreen({required this.kanjiContent});
  List<String> kanjiContent;
  @override
  State<KanjiScreen> createState() => _KanjiScreenState(kanji: kanjiContent);
}

class _KanjiScreenState extends State<KanjiScreen> {
  List<String> kanji;
  _KanjiScreenState({required this.kanji});
  bool favoriteStatus = true;

  @override
  Widget build(BuildContext context) {
    double paddingWidth = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tangoGreen,
        automaticallyImplyLeading: false,
        title: Text("${kanji[0]}    ${kanji[1]}  ${kanji[2]}"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Text(kanji.first, style: tableKanjiStyle)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    highlightColor: Colors.transparent,
                    icon: Icon(
                      favoriteStatus ? Icons.star_border : Icons.star,
                      color: tangoGreen,
                      size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        favoriteStatus == true
                            ? favoriteStatus = false
                            : favoriteStatus = true;
                      });
                    }),
                IconButton(
                  highlightColor: Colors.transparent,
                  icon:
                      Icon(Icons.play_circle_fill_outlined, color: tangoGreen),
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: ((context) {
                        return AlertDialog(
                          backgroundColor: Color(0xffffffff),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: KanjiDrawingAnimation(
                                  speed: 50,
                                  kanji.first,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    );
                  },
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: paddingWidth),
                      child: Text(
                        kanji[1],
                        style: tableReadingStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: paddingWidth),
                      child: Text(
                        kanji[2],
                        style: tableReadingStyle,
                      ),
                    ),
                  ],
                ),
                kanji.length != 3
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: paddingWidth),
                            child: Text(
                              kanji[3],
                              style: tableReadingStyle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: paddingWidth),
                            child: Text(
                              kanji[4],
                              style: tableReadingStyle,
                            ),
                          ),
                        ],
                      )
                    : Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
