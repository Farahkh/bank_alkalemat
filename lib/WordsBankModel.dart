import 'dart:convert';
import 'package:flutter/services.dart';

import 'Filterparameters.dart';
import 'WordModel.dart';

class WordBankModel {
  List<WordModel> words;

  WordBankModel({this.words});

  factory WordBankModel.fromJson(List<dynamic> parsedJson) {
    List<WordModel> words = new List<WordModel>();
    words = parsedJson.map((i) => WordModel.fromJson(i)).toList();

    return WordBankModel(words: words);
  }

  static Future<WordBankModel> getData() async {
    String jsonString = await rootBundle.loadString('data/databank.json');
    final jsonResult = json.decode(jsonString);

    return WordBankModel.fromJson(jsonResult);
  }

  static Future<WordBankModel> LoadWordList(Filter filter) async {
    WordBankModel wordsList = await getData();
    if (filter.params.isNotEmpty) {
      wordsList = filter.filterList(wordsList);
    }
      return wordsList;

  }

  static Future<List> LoadWordLetters(Filter filter) async {
    List wordLetters = new List();
    WordBankModel wordsList = await getData();
    if (filter.params.isNotEmpty){
      WordBankModel filteredWordsList= filter.filterList(wordsList);
      for (int i=0; i<filteredWordsList.words.length-1; i++) {
        if (!wordLetters.any((element) =>
        element == filteredWordsList.words[i].word_letters))
          wordLetters.add(filteredWordsList.words[i].word_letters);
      }
    }else{
      for (int i=0; i<wordsList.words.length-1; i++){
      if(!wordLetters.any((element) => element==wordsList.words[i].word_letters))
        wordLetters.add(wordsList.words[i].word_letters);
    }}


    return wordLetters;
  }

  static Future<List> LoadWordType(Filter filter) async {
    List wordType = new List();
    WordBankModel wordsList = await getData();
    if (filter.params.isNotEmpty){
      WordBankModel filteredWordsList= filter.filterList(wordsList);
      for (int i=0; i<filteredWordsList.words.length-1; i++) {
        if (!wordType.any((element) =>
        element == filteredWordsList.words[i].word_type))
          wordType.add(filteredWordsList.words[i].word_type);
      }
    }else{
    for (int i=0; i<wordsList.words.length-1; i++){
      if(!wordType.any((element) => element==wordsList.words[i].word_type))
        wordType.add(wordsList.words[i].word_type);
    }}
    return wordType;
  }

  static Future<List> LoadWordWeight(Filter filter) async {
    List wordWeight = new List();
    WordBankModel wordsList = await getData();
    if (filter.params.isNotEmpty){
      WordBankModel filteredWordsList= filter.filterList(wordsList);
      for (int i=0; i<=filteredWordsList.words.length-1; i++) {
        if (!wordWeight.any((element) =>
        element == filteredWordsList.words[i].word_wieght))
          wordWeight.add(filteredWordsList.words[i].word_wieght);
      }}
//    }else{
//    for (int i=0; i<wordsList.words.length-1; i++){
//      if(!wordWeight.any((element) => element==wordsList.words[i].word_wieght))
//        wordWeight.add(wordsList.words[i].word_wieght);
//    }}
    print('WordBankModel object: WordWeight is: $wordWeight');
    return wordWeight;
  }




}
