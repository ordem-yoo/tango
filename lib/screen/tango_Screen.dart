// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names, unused_import

// Packages
import 'package:flutter/material.dart';
import 'package:tango/constants.dart';
import 'dart:convert';

//
import '../customWidgets/tangoContainer.dart';
import '../function/getData.dart';

class Tango extends StatefulWidget {
  @override
  State<Tango> createState() => _TangoState();
}

class _TangoState extends State<Tango> {
  late Future<TangoList> tangoList;
  @override
  void initState() {
    super.initState();
    tangoList = fetchTango();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<TangoList>(
            future: tangoList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return TangoContainer();
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              return CircularProgressIndicator();
            }),
      ),
    );
  }
}


// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.4,
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("kanji", style: kanji),
//                     Text('hiragana', style: hiragana),
//                     Text('pronunciation', style: pronunciation),
//                     Text("korean", style: korean),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 100),
//             TextButton(
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(Color(0xffB5D99C)),
//                   foregroundColor: MaterialStateProperty.all(Colors.white),
//                 ),
//                 onPressed: () {},
//                 child: Text("Next")),
//             SizedBox(
//               height: 50,
//             ),
//             TextButton(
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(Color(0xffB5D99C)),
//                   foregroundColor: MaterialStateProperty.all(Colors.white),
//                 ),
//                 onPressed: () {},
//                 child: Text("Previous")),
//           ],
//         ),