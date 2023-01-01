// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

// Package
import 'package:flutter/material.dart';
// Widget
import '../Widgets/unitList.dart';

class BookList extends StatefulWidget {
  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1D2671),
            flexibleSpace: SafeArea(
              child: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                      child: Text('上券',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'ZenKakuGothicAntique'))),
                  Tab(
                      child: Text('下券',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'ZenKakuGothicAntique'))),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    UnitList('1.', '文字と発音 上', '문장과 발음 上', context),
                    UnitList('2.', '文字と発音 下', '문장과 발음 下', context),
                    UnitList('3.', 'はじめまして。', '처음 뵙겠습니다.', context),
                    UnitList('4.', 'これは 何ですか。', '이것은 무엇입니까?', context),
                    UnitList('5.', '今 何時ですか。', '지금 몇 시입니까?', context),
                    UnitList('6.', '今日は 何月 何日ですか。', '오늘은 몇 월 며칠입니까?', context),
                    UnitList('7.', 'この ケーキは いくらですか。', '이 케이크는 얼마입니까?', context),
                    UnitList(
                        '8.', '日本語は とても おもしろいです。', '일본어는 아주 재미있습니다.', context),
                    UnitList(
                        '9.', '静かで、きれいな 部屋ですね。', '조용하고 깨끗한 방이군요.', context),
                    UnitList('10.', '日本語学校はどこですか。', '일본어 학교는 어디입니까?', context),
                    UnitList('11.', '何人家族ですか。', '가족이 몇 명입니까?', context),
                    UnitList(
                        '12.', '友達と 一緒に 映画を 見ます。', '친구와 함께 영화를 봅니다.', context),
                    UnitList('13.', '最近 寒く なりましたね。', '요즘 추워졌네요', context),
                    UnitList('14.', '友達と 遊びに 行きます。', '친구와 놀러 갑니다.', context),
                    UnitList('15.', '漢字も 多いし、読み方も \n難しいですね。',
                        '한자는 많고, 읽는 법도 어렵네요', context),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    UnitList('1.', '今 何を して いますか。', '지금무엇을 하고 있습니까?', context),
                    UnitList('2.', 'どこに 住んで いますか。', '어디에 살고 있습니까?', context),
                    UnitList('3.', '妹も つれて 行っても いいですか。', '여동생도 데리고 가도 됩니까?',
                        context),
                    UnitList(
                        '4.', '日本へ 行った ことが ありますか。', '일본에 간 적이 있습니까?', context),
                    UnitList('5.', '本を 読んだり 音楽を\n聞いたり します。',
                        '책을 읽기도 하고 음악을 듣기도 합니다..', context),
                    UnitList('6.', 'お酒が 飲めますか。', '술을 마실 수 있습니까?', context),
                    UnitList('7.', '5時に 起きなければ なりません。', '5시에 일어나지 않으면 안 됩니다',
                        context),
                    UnitList(
                        '8.', '土曜日に 結婚するそうです。', '토요일에 결혼한다고 합니다.', context),
                    UnitList('9.', 'まるで 天使の ようですね。', '마치 천사와 같군요', context),
                    UnitList('10.', 'ここから どうやって 行けば\nいいですか。',
                        '여기에서 어떻게 가면 됩니까?', context),
                    UnitList(
                        '11.', 'ペンを 貸して くれませんか。 ', '펜을 빌려주지 않겠습니까?', context),
                    UnitList(
                        '12.', '隣の 人に 足を 踏まれました。', '옆 사람에게 발을 밟혔습니다.', context),
                    UnitList('13.', '漢字を 書かせたり 例文を\n覚えさせたり します。',
                        '한자를 쓰게 하기도 하고 예문을 외우게 하기도 합니다.', context),
                    UnitList('14.', '少々 お待ち ください。', '잠시만 기다려 주십시오', context),
                    UnitList('15.', '私が お持ちします。', '제가 들어 드리겠습니다.', context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
