import 'package:bankalkalemat/screens/WordsList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../WordsBankModel.dart';
import '../constants.dart';

class WordTypeWidget extends StatelessWidget {
  int typeGroupValue;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: EdgeInsets.all(5.0),
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          color: Color(0x20000000),
          width: 0.4,
        ),
        depth: -5.0,
      ),
      child: Consumer<Filter>(builder: (context, filter, child) {
        typeGroupValue = filter.wordType;
        return FutureBuilder(
            future: WordBankModel.LoadWordType(filter),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                List wordTypeGroup = snapshot.data;
                wordTypeGroup.sort((a, b) => a. compareTo(b));
                return GridView.count(
                  padding: EdgeInsets.all(8.0),
                  crossAxisCount: 5,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  children: <Widget>[
                    ...buildNeumorphicRadio(context, filter, wordTypeGroup),
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
      BuildContext context, Filter filter, List wordTypeGroup) {
    List<NeumorphicRadio> radioButtonsList = new List();
    wordTypeGroup.forEach((element) {
      if (filter.typeButtonStatus(element))
        radioButtonsList.add(
          NeumorphicRadio(
            style: kRadioButtonStyle(context),
            padding: EdgeInsets.all(5.0),
            groupValue: typeGroupValue,
            value: element,
            onChanged: (value) {
              filter.wordType = value;
              if (value != null)
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return WordsList(title: 'بنك الكلمات القراَنية', context: context,);
                }));
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
