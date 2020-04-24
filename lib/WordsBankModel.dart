import 'WordModel.dart';

class WordBankModel {
  final List<WordModel> words;

  WordBankModel({
    this.words,
  });

  factory WordBankModel.fromJson(List<dynamic> parsedJson) {
    List<WordModel> words = new List<WordModel>();
    words = parsedJson.map((i) => WordModel.fromJson(i)).toList();

    return WordBankModel(words: words);
  }
}
