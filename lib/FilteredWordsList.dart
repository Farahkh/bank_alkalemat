
import 'package:bankalkalemat/WordsBankModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';


class FilteredWordsList with ChangeNotifier{

  FilteredWordsList(){
//    context = this.context;
    loadList();
  }
//  BuildContext context;
  WordBankModel wordsList;

  void loadList() async{
//    Filter filter = Provider.of<Filter>(context);
//    if(filter!=null){
//      wordsList = filter.filterList(await WordBankModel.getData());
//    }
//    else {
//      wordsList = await WordBankModel.getData();
//    }
//
//    notifyListeners();
  }

  void ActiveWordLettersButtons(){
    List activeButtons= new List();
    wordsList.words.forEach((element) {activeButtons.add(element.word_letters);});
    notifyListeners();
  }

  void ActiveWordTypeButtons(){
    List activeButtons= new List();
    wordsList.words.forEach((element) {activeButtons.add(element.word_type);});
    notifyListeners();
  }

  void ActiveWordWeightButtons(){
    List activeButtons= new List();
    wordsList.words.forEach((element) {activeButtons.add(element.word_wieght);});
    notifyListeners();
  }
 }