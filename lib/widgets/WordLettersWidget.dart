import 'package:bankalkalemat/FilteredWordsList.dart';
import 'package:bankalkalemat/WordsBankModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class WordLettersWidget extends StatelessWidget {
  int lettersGroupValue;
  FilteredWordsList wordsList;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: EdgeInsets.all(10.0),
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          color: Color(0x20000000),
          width: 0.4,
        ),
        depth: -5.0,
      ),
      child: Consumer<Filter>(builder: (context, filter, child) {
        lettersGroupValue = filter.wordLetters;

        return FutureBuilder(
            future: WordBankModel.LoadWordLetters(filter),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                List wordLettersGroup = snapshot.data;
                wordLettersGroup.sort((a, b) => a. compareTo(b));
                return GridView.count(
                  padding: EdgeInsets.all(8.0),
                  crossAxisCount: 5,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  children: <Widget>[
                    ...buildNeumorphicRadio(context, filter, wordLettersGroup),
                  ],
                );
              } else {
                return Text("${snapshot.error}");
              }
            });
      }),
    );
  }

  List<NeumorphicRadio> buildNeumorphicRadio(
      BuildContext context, Filter filter, List<dynamic> wordLettersGroup) {
    List<NeumorphicRadio> radioButtonsList = new List();
    wordLettersGroup.forEach((element) {
      if (filter.lettersButtonStatus(element))
        radioButtonsList.add(
          NeumorphicRadio(
            style: kRadioButtonStyle(context),
            padding: EdgeInsets.all(5.0),
            groupValue: lettersGroupValue,
            value: element,
            onChanged: (value) {
              filter.wordLetters = value;
            },
            child: Center(
                child: Text(
              element.toString(),
              style: TextStyle(
                color: NeumorphicTheme.currentTheme(context).defaultTextColor,
              ),
            )),
          ),
        );
    });
    return radioButtonsList;
  }
}
