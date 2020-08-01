class WordModel {
  String word;
  int word_letters;
  int word_type;
  int word_wieght;

  WordModel(
      {
      this.word,
      this.word_letters,
      this.word_type,
      this.word_wieght});

  factory WordModel.fromJson(Map<String, dynamic> parsedJson) {
    return WordModel(
      word: parsedJson['الكلمة'] as String,
      word_letters: parsedJson['حروف الكلمة'] as int,
      word_type: parsedJson['نوع الكلمة'] as int,
      word_wieght: parsedJson['وزن الكلمة'] as int,
    );
  }
}
