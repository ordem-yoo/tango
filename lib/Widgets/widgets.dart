// Packages
import 'package:flutter/material.dart';

//constants
import 'package:tango/constants.dart';

//Screen
import '../Screen/tangoscreen.dart';

Padding tangoContainer(AsyncSnapshot<Post> snapshot, TextStyle font,
    int bookNumber, int unitNumber, int tangoNumber) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      "${snapshot.data?.booklist[9][0][0]}",
      style: font,
    ),
  );
}
