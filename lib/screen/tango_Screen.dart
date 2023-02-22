// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names, unused_import

// Packages
import 'package:flutter/material.dart';
import 'package:tango/constants.dart';
import 'package:tango/screen/list_Screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Widget&Class
import '../class/class.dart';

Future<TangoList> fetchTangoList() async {
  final response = await http.get(Uri.parse(
      'https://gist.githubusercontent.com/ordem-yoo/d1b67b895f3d2ae163422a395e3e5801/raw/3c9d7c8a0ed958b9ba8fd8ee9d42e6483387c82e/tango.json'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return TangoList.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Tango extends StatefulWidget {
  @override
  State<Tango> createState() => _TangoState();
}

class _TangoState extends State<Tango> {
  late Future<TangoList> tangoList;

  @override
  void initState() {
    super.initState();
    tangoList = fetchTangoList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<TangoList>(
            future: tangoList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container();
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
