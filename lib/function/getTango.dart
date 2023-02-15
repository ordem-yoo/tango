// ignore_for_file: file_names

// Package
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<TangoList> fetchTango() async {
  Uri();

  final response = await http.get(Uri.parse(
      "https://gist.githubusercontent.com/ordem-yoo/d1b67b895f3d2ae163422a395e3e5801/raw/aeb2e1b1cbe09bf6252b88e7ab865d7016b68bec/tango.json"));

  if (response.statusCode == 200) {
    return TangoList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class TangoList {
  var kanji;
  var hiragana;
  var pronunciation;
  var korean;

  TangoList({
    required this.kanji,
    required this.hiragana,
    required this.pronunciation,
    required this.korean,
  });

  factory TangoList.fromJson(Map<String, dynamic> json) {
    return TangoList(
        kanji: json['book'][9],
        hiragana: json['hiragana'],
        pronunciation: json['pronunciation'],
        korean: json['korean']);
  }
}
