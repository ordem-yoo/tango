// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../constants.dart';

class HiraTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            Column(children: [
              Text('あ', style: tableJp),
              Text('아', style: tableKr),
            ]),
            Column(children: [
              Text('い', style: tableJp),
              Text('이', style: tableKr),
            ]),
            Column(children: [
              Text('う', style: tableJp),
              Text('우', style: tableKr),
            ]),
            Column(children: [
              Text('え', style: tableJp),
              Text('에', style: tableKr),
            ]),
            Column(children: [
              Text('お', style: tableJp),
              Text('오', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('か', style: tableJp),
              Text('카', style: tableKr),
            ]),
            Column(children: [
              Text('き', style: tableJp),
              Text('키', style: tableKr),
            ]),
            Column(children: [
              Text('く', style: tableJp),
              Text('쿠', style: tableKr),
            ]),
            Column(children: [
              Text('け', style: tableJp),
              Text('케', style: tableKr),
            ]),
            Column(children: [
              Text('こ', style: tableJp),
              Text('코', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('さ', style: tableJp),
              Text('사', style: tableKr),
            ]),
            Column(children: [
              Text('し', style: tableJp),
              Text('시', style: tableKr),
            ]),
            Column(children: [
              Text('す', style: tableJp),
              Text('스', style: tableKr),
            ]),
            Column(children: [
              Text('せ', style: tableJp),
              Text('세', style: tableKr),
            ]),
            Column(children: [
              Text('そ', style: tableJp),
              Text('소', style: tableKr),
            ]),
          ],
        ),
        //
        TableRow(
          children: [
            Column(children: [
              Text('た', style: tableJp),
              Text('타', style: tableKr),
            ]),
            Column(children: [
              Text('ち', style: tableJp),
              Text('치', style: tableKr),
            ]),
            Column(children: [
              Text('つ', style: tableJp),
              Text('츠', style: tableKr),
            ]),
            Column(children: [
              Text('て', style: tableJp),
              Text('테', style: tableKr),
            ]),
            Column(children: [
              Text('と', style: tableJp),
              Text('토', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('な', style: tableJp),
              Text('나', style: tableKr),
            ]),
            Column(children: [
              Text('に', style: tableJp),
              Text('니', style: tableKr),
            ]),
            Column(children: [
              Text('ぬ', style: tableJp),
              Text('누', style: tableKr),
            ]),
            Column(children: [
              Text('ね', style: tableJp),
              Text('네', style: tableKr),
            ]),
            Column(children: [
              Text('の', style: tableJp),
              Text('노', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('は', style: tableJp),
              Text('하', style: tableKr),
            ]),
            Column(children: [
              Text('ひ', style: tableJp),
              Text('히', style: tableKr),
            ]),
            Column(children: [
              Text('ふ', style: tableJp),
              Text('후', style: tableKr),
            ]),
            Column(children: [
              Text('へ', style: tableJp),
              Text('헤', style: tableKr),
            ]),
            Column(children: [
              Text('ほ', style: tableJp),
              Text('호', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ま', style: tableJp),
              Text('마', style: tableKr),
            ]),
            Column(children: [
              Text('み', style: tableJp),
              Text('미', style: tableKr),
            ]),
            Column(children: [
              Text('む', style: tableJp),
              Text('무', style: tableKr),
            ]),
            Column(children: [
              Text('め', style: tableJp),
              Text('메', style: tableKr),
            ]),
            Column(children: [
              Text('も', style: tableJp),
              Text('모', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('や', style: tableJp),
              Text('야', style: tableKr),
            ]),
            Column(children: []),
            Column(children: [
              Text('ゆ', style: tableJp),
              Text('유', style: tableKr),
            ]),
            Column(children: []),
            Column(children: [
              Text('よ', style: tableJp),
              Text('요', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ら', style: tableJp),
              Text('라', style: tableKr),
            ]),
            Column(children: [
              Text('り', style: tableJp),
              Text('리', style: tableKr),
            ]),
            Column(children: [
              Text('る', style: tableJp),
              Text('루', style: tableKr),
            ]),
            Column(children: [
              Text('れ', style: tableJp),
              Text('레', style: tableKr),
            ]),
            Column(children: [
              Text('ろ', style: tableJp),
              Text('로', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('わ', style: tableJp),
              Text('와', style: tableKr),
            ]),
            Column(children: []),
            Column(children: []),
            Column(children: []),
            Column(children: [
              Text('を', style: tableJp),
              Text('오', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ん', style: tableJp),
              Text('응(ㄴ)', style: tableKr),
            ]),
            Column(),
            Column(),
            Column(),
            Column(),
          ],
        ),
      ],
    );
  }
}

class GataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            Column(children: [
              Text('ア', style: tableJp),
              Text('아', style: tableKr),
            ]),
            Column(children: [
              Text('イ', style: tableJp),
              Text('이', style: tableKr),
            ]),
            Column(children: [
              Text('ウ', style: tableJp),
              Text('우', style: tableKr),
            ]),
            Column(children: [
              Text('エ', style: tableJp),
              Text('에', style: tableKr),
            ]),
            Column(children: [
              Text('オ', style: tableJp),
              Text('오', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('カ', style: tableJp),
              Text('카', style: tableKr),
            ]),
            Column(children: [
              Text('キ', style: tableJp),
              Text('키', style: tableKr),
            ]),
            Column(children: [
              Text('ク', style: tableJp),
              Text('쿠', style: tableKr),
            ]),
            Column(children: [
              Text('ケ', style: tableJp),
              Text('케', style: tableKr),
            ]),
            Column(children: [
              Text('コ', style: tableJp),
              Text('코', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('サ', style: tableJp),
              Text('사', style: tableKr),
            ]),
            Column(children: [
              Text('シ', style: tableJp),
              Text('시', style: tableKr),
            ]),
            Column(children: [
              Text('ス', style: tableJp),
              Text('스', style: tableKr),
            ]),
            Column(children: [
              Text('セ', style: tableJp),
              Text('세', style: tableKr),
            ]),
            Column(children: [
              Text('ソ', style: tableJp),
              Text('소', style: tableKr),
            ]),
          ],
        ),
        //
        TableRow(
          children: [
            Column(children: [
              Text('タ', style: tableJp),
              Text('타', style: tableKr),
            ]),
            Column(children: [
              Text('チ', style: tableJp),
              Text('치', style: tableKr),
            ]),
            Column(children: [
              Text('ツ', style: tableJp),
              Text('츠', style: tableKr),
            ]),
            Column(children: [
              Text('テ', style: tableJp),
              Text('테', style: tableKr),
            ]),
            Column(children: [
              Text('ト', style: tableJp),
              Text('토', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ナ', style: tableJp),
              Text('나', style: tableKr),
            ]),
            Column(children: [
              Text('ニ', style: tableJp),
              Text('니', style: tableKr),
            ]),
            Column(children: [
              Text('ヌ', style: tableJp),
              Text('누', style: tableKr),
            ]),
            Column(children: [
              Text('ネ', style: tableJp),
              Text('네', style: tableKr),
            ]),
            Column(children: [
              Text('ノ', style: tableJp),
              Text('노', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ハ', style: tableJp),
              Text('하', style: tableKr),
            ]),
            Column(children: [
              Text('ヒ', style: tableJp),
              Text('히', style: tableKr),
            ]),
            Column(children: [
              Text('フ', style: tableJp),
              Text('후', style: tableKr),
            ]),
            Column(children: [
              Text('ヘ', style: tableJp),
              Text('헤', style: tableKr),
            ]),
            Column(children: [
              Text('ホ', style: tableJp),
              Text('호', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('マ', style: tableJp),
              Text('마', style: tableKr),
            ]),
            Column(children: [
              Text('ミ', style: tableJp),
              Text('미', style: tableKr),
            ]),
            Column(children: [
              Text('ム', style: tableJp),
              Text('무', style: tableKr),
            ]),
            Column(children: [
              Text('メ', style: tableJp),
              Text('메', style: tableKr),
            ]),
            Column(children: [
              Text('モ', style: tableJp),
              Text('모', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ヤ', style: tableJp),
              Text('야', style: tableKr),
            ]),
            Column(),
            Column(children: [
              Text('ユ', style: tableJp),
              Text('유', style: tableKr),
            ]),
            Column(),
            Column(children: [
              Text('ヨ', style: tableJp),
              Text('요', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ラ', style: tableJp),
              Text('라', style: tableKr),
            ]),
            Column(children: [
              Text('リ', style: tableJp),
              Text('리', style: tableKr),
            ]),
            Column(children: [
              Text('ル', style: tableJp),
              Text('루', style: tableKr),
            ]),
            Column(children: [
              Text('レ', style: tableJp),
              Text('레', style: tableKr),
            ]),
            Column(children: [
              Text('ロ', style: tableJp),
              Text('로', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ワ', style: tableJp),
              Text('와', style: tableKr),
            ]),
            Column(children: []),
            Column(children: []),
            Column(children: []),
            Column(children: [
              Text('ヲ', style: tableJp),
              Text('오', style: tableKr),
            ]),
          ],
        ),
        TableRow(
          children: [
            Column(children: [
              Text('ン', style: tableJp),
              Text('응(ㄴ)', style: tableKr),
            ]),
            Column(),
            Column(),
            Column(),
            Column(),
          ],
        ),
      ],
    );
  }
}
