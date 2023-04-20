// ignore_for_file: prefer_typing_uninitialized_variables, file_names

int bookIndex = 0, titleIndex = 0;

class BookList {
  var book;

  BookList({required this.book});

  factory BookList.fromJson(Map<String, dynamic> json) {
    return BookList(
      book: json["book"],
    );
  }
}
