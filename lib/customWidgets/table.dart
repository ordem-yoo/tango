// Pakcages
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kanji_drawing_animation/kanji_drawing_animation.dart';

// Dart file
import '../constants.dart';

List<List<String>> hiragana = [
  ['あ', 'い', 'う', 'え', 'お'],
  ['か', 'き', 'く', 'け', 'こ'],
  ['さ', 'し', 'す', 'せ', 'そ'],
  ['た', 'ち', 'つ', 'て', 'と'],
  ['な', 'に', 'ぬ', 'ね', 'の'],
  ['は', 'ひ', 'ふ', 'へ', 'ほ'],
  ['ま', 'み', 'む', 'め', 'も'],
  ['や', '', 'ゆ', '', 'よ'],
  ['ら', 'り', 'る', 'れ', 'ろ'],
  ['わ', '', '', '', 'を'],
  ['', '', '', '', 'ん']
];
List<List<String>> katakana = [
  ['ア', 'イ', 'ウ', 'エ', 'オ'],
  ['カ', 'キ', 'ク', 'ケ', 'コ'],
  ['サ', 'シ', 'ス', 'セ', 'ソ'],
  ['タ', 'チ', 'ツ', 'テ', 'ト'],
  ['ナ', 'ニ', 'ヌ', 'ネ', 'ノ'],
  ['ハ', 'ヒ', 'フ', 'ヘ', 'ホ'],
  ['マ', 'ミ', 'ム', 'メ', 'モ'],
  ['ヤ', '', 'ユ', '', 'ヨ'],
  ['ラ', 'リ', 'ル', 'レ', 'ロ'],
  ['ワ', '', '', '', 'ヲ'],
  ['', '', '', '', 'ン'],
];
List<List<String>> korean = [
  ['아', '이', '우', '에', '오'],
  ['카', '키', '쿠', '케', '코'],
  ['사', '시', '수', '세', '소'],
  ['타', '치', '츠', '테', '토'],
  ['나', '니', '누', '네', '노'],
  ['하', '히', '후', '헤', '호'],
  ['마', '미', '무', '메', '모'],
  ['야', '', '유', '', '요'],
  ['라', '리', '루', '레', '로'],
  ['와', '', '', '', '오'],
  ['', '', '', '', '응(ㄴ)']
];

Padding ganaKanaTable(bool isgana, BuildContext context) => Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(),
        children: List.generate(
          11,
          (rowindex) => TableRow(
            children: List.generate(
              5,
              (colindex) => GestureDetector(
                child: Column(
                  children: [
                    Text(
                      isgana == true
                          ? hiragana[rowindex][colindex]
                          : katakana[rowindex][colindex],
                      style: ganaKanaStyle,
                    ),
                    Text(
                      korean[rowindex][colindex],
                      style: tableKrStyle,
                    ),
                  ],
                ),
                onTap: () {
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
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: KanjiDrawingAnimation(
                                speed: 50,
                                isgana == true
                                    ? hiragana[rowindex][colindex]
                                    : katakana[rowindex][colindex],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
