// Packages
import 'package:flutter/material.dart';

//constants
import 'package:tango/constants.dart';

//Screen
import '../Screen/tangoscreen.dart';

Padding tangoContainer(AsyncSnapshot<Post> snapshot, TextStyle font,
    int unitNumber, int tangoNumber, String category) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      // snapshot.data?.booklist[unitlist][tangonumber][category]
      "${snapshot.data?.booklist[9][tangoNumber][category]}",
      style: font,
    ),
  );
}
