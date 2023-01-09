// ignore_for_file: non_constant_identifier_names, file_names, prefer_const_constructors

// Package
import 'package:flutter/material.dart';

// Screen
import '../Screen/tangoscreen.dart';

// Constants
import '../constants.dart';

Widget UnitList(String indexNumber, title, subtitle, dynamic contexts) {
  indexNumber;
  return Padding(
    padding: EdgeInsets.fromLTRB(4.0, 16.0, 4.0, 0),
    child: ListTile(
      dense: true,
      horizontalTitleGap: 0.0,
      contentPadding: EdgeInsets.only(left: 1.0),
      leading: Text('$indexNumber' '.', style: listNum),
      title: Text(title, style: listJp),
      subtitle: Text(
        subtitle,
        style: listKr,
      ),
      trailing: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffD66D75),
            foregroundColor: Colors.white,
          ),
          child: Text('スタート'),
          onPressed: () {
            Navigator.push(contexts, MaterialPageRoute(builder: (contexts) {
              return TangoScreen(indexNumber);
            }));
          }),
    ),
  );
}
