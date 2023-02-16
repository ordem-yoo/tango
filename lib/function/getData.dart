// ignore_for_file: file_names, prefer_typing_uninitialized_variables

// Package
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<TangoList> fetchTango() async {
  Uri();

  final response = await http.get(Uri.parse(
      "https://gist.githubusercontent.com/ordem-yoo/d1b67b895f3d2ae163422a395e3e5801/raw/3c9d7c8a0ed958b9ba8fd8ee9d42e6483387c82e/tango.json"));

  if (response.statusCode == 200) {
    return TangoList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class TangoList {
  var booktitle;
  var unit;
  var title;
  var subtitle;
  var tango;
  var kanji;
  var hiragana;
  var pronunciation;
  var korean;

  TangoList({
    required this.booktitle,
    required this.unit,
    required this.title,
    required this.subtitle,
    required this.tango,
    required this.kanji,
    required this.hiragana,
    required this.pronunciation,
    required this.korean,
  });

  factory TangoList.fromJson(Map<String, dynamic> json) {
    return TangoList(
      booktitle: json['book'][0]['booktitle'],
      unit: json['book'][0]['unit'],
      title: json['book'][0]['unit'][0]["title"],
      subtitle: json['book'][0]['unit'][0]["subtilte"],
      tango: json['book'][0]['unit'][0]["tango"],
      kanji: json['book'][0]['unit'][0]["tango"][0]["kanji"],
      hiragana: json['book'][0]['unit'][0]["tango"]["hiragana"],
      pronunciation: json['book'][0]['unit'][0]["tango"]["pronunciation"],
      korean: json['book'][0]['unit'][0]["tango"]["korean"],
    );
  }
}
