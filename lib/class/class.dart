class BookList {
  final String booktitle;
  final String unit;
  final String title;
  final String subtitle;

  BookList({
    required this.booktitle,
    required this.unit,
    required this.title,
    required this.subtitle,
  });

  factory BookList.fromJson(Map<String, dynamic> json) {
    return BookList(
      booktitle: ["book"][0],
      unit: json["book"][0].toString(),
      title: json["title"].toString(),
      subtitle: json['book'].toString(),
    );
  }
}

class TangoList {
  final String tango;
  final String kanji;
  final String hiragana;
  final String pronunciation;
  final String korean;

  TangoList({
    required this.tango,
    required this.kanji,
    required this.hiragana,
    required this.pronunciation,
    required this.korean,
  });

  factory TangoList.fromJson(Map<String, dynamic> json) {
    return TangoList(
      tango: json["book"],
      kanji: json['book'][0]['unit'][0]["tango"][0]["kanji"],
      hiragana: json['book'][0]['unit'][0]["tango"][0]["hiragana"],
      pronunciation: json['book'][0]['unit'][0]["tango"][0]["pronunciation"],
      korean: json['book'][0]['unit'][0]["tango"][0]["korean"],
    );
  }
}
