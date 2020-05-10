import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'Filterparameters.dart';
import 'WordsBankModel.dart';

class WordList extends ChangeNotifier {
  WordBankModel wordsList;
  Filter filer;


  Future<WordBankModel> loadList() async {
    String jsonString = await _loadAWordBankAsset();
    final jsonResult = json.decode(jsonString);
    wordsList=WordBankModel.fromJson(jsonResult);
    return wordsList;
  }

  WordBankModel getList(){
    return wordsList;
  }

  void filterList(String sokonType,
  String rythmicWieght,
  String soundWieght) {
    List words = wordsList.words;
     words.where((e) =>
    e.sokonType == sokonType ||
        e.soundWieght == soundWieght ||
        e.rythmicWieght == rythmicWieght)
        .toList();
//    WordBankModel(words: filteredWords);
    notifyListeners();


  }

  Future<String> _loadAWordBankAsset() async {
    return await rootBundle.loadString('data/databank.json');
  }

//  Future wait(int seconds) {
//    return new Future.delayed(Duration(seconds: seconds), () => {});
//  }

}
