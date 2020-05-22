import 'dart:convert';

import 'package:bankalkalemat/Filterparameters.dart';
import 'package:flutter/services.dart';

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




}
