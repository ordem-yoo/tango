// Packages
import 'package:flutter/material.dart';

//constants
import 'package:tango/constants.dart';

//Screen
import '../Screen/tangoscreen.dart';

Padding tangoContainer(AsyncSnapshot<Post> snapshot, int tangoNumber,
    String content, TextStyle font) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      "${snapshot.data?.tangolist[tangoNumber][content]}",
      style: font,
    ),
  );
}
