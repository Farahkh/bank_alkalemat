class WordModel {
  String id;
  String word;
  String sokonType;
  String rythmicWieght;
  String soundWieght;

  WordModel(
      {this.id,
      this.word,
      this.sokonType,
      this.rythmicWieght,
      this.soundWieght});

  factory WordModel.fromJson(Map<String, dynamic> parsedJson) {
    return WordModel(
      id: parsedJson['المعرف'] as String,
      word: parsedJson['الكلمات'] as String,
      sokonType: parsedJson['نوع_السكون'] as String,
      rythmicWieght: parsedJson['الوزن_الايقاعي'] as String,
      soundWieght: parsedJson['الوزن_الصوتي'] as String,
    );
  }
}
