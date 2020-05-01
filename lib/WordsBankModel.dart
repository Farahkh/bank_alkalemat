import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'Filterparameters.dart';
import 'WordModel.dart';

class WordBankModel{
   List<WordModel> words;

  WordBankModel({this.words});

  factory WordBankModel.fromJson(List<dynamic> parsedJson) {
    List<WordModel> words = new List<WordModel>();
    words = parsedJson.map((i) => WordModel.fromJson(i)).toList();

    return WordBankModel(words: words);
  }

   Future<WordBankModel> loadList() async {
     String jsonString = await _loadAWordBankAsset();
     final jsonResult = json.decode(jsonString);
     return WordBankModel.fromJson(jsonResult);
   }

   Future<String> _loadAWordBankAsset() async {
     return await rootBundle.loadString('data/databank.json');
   }

  void filter(Filter filterParameters) {
  if(filterParameters==null){
  loadList();
  words = words.where((e) =>
            e.sokonType == filterParameters.sokonType ||
            e.rythmicWieght == filterParameters.rythmicWieght ||
            e.soundWieght == filterParameters.soundWieght)
        .toList();
}else loadList();
  }
}
