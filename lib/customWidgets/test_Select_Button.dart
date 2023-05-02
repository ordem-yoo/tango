// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import '../constants.dart';
import '../screen/test_Screen.dart';

Widget test_Select_Button(String title, Color color, BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.4,
    height: MediaQuery.of(context).size.width * 0.4,
    child: FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: test_Select_Title,
        ),
      ),
      onPressed: () {
        showDialog(
          useSafeArea: true,
          context: context,
          barrierDismissible: true,
          builder: ((context) {
            return Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.height * 0.5,
                child: AlertDialog(
                  title: Center(
                    child: Text(
                      "どんな試験をうけましようか",
                      style: rank_Select_Alert,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 30),
                  backgroundColor: Color(0xffffffff),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      testSelectButton("単語 → 平仮名", context),
                      testSelectButton("単語 → 韓国語", context),
                      testSelectButton("漢字 → 韓国語", context),
                      testSelectButton("韓国語 → 漢字", context),
                    ],
                  ),
                ),
              ),
            );
          }),
        );
      },
    ),
  );
}

Widget testSelectButton(String title, BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.height * 0.3,
    child: FilledButton(
      style: rank_Select_Button,
      child: Text(title, style: rank_Select_Title),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return TestScreen(title);
            },
          ),
        );
      },
    ),
  );
}
