import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../WordsBankModel.dart';
import '../constants.dart';

class WordWeightWidget extends StatelessWidget {
  int weightGroupValue;

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
        weightGroupValue = filter.wordWieght;
        return FutureBuilder(
            future: WordBankModel.LoadWordWeight(filter),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                List wordWieghtGroup = snapshot.data;
                wordWieghtGroup.sort((a, b) => a. compareTo(b));
                return ListView.builder(
                  itemCount: buildNeumorphicRadio(context, filter, wordWieghtGroup).length,
                  itemBuilder: (context, index) {
                    return buildNeumorphicRadio(context, filter, wordWieghtGroup)[index];
                  },
                );
              } else {
                return Text("${snapshot.error}");
              }
            });
      }),
    );
  }

  List<NeumorphicRadio> buildNeumorphicRadio(
      BuildContext context, Filter filter, List<dynamic> wordWieghtGroup) {
    List<NeumorphicRadio> radioButtonsList = new List();
    wordWieghtGroup.forEach((element) {
      if (filter.weightButtonStatus(element))
        radioButtonsList.add(NeumorphicRadio(
          style: kRadioButtonStyle(context),
          padding: EdgeInsets.all(10.0),
          groupValue: weightGroupValue,
          value: element,
          onChanged: (value) {
            filter.wordWieght = value;
          },
          child: Center(
              child: Text(
                element.toString(),
                style: TextStyle(
                  color: NeumorphicTheme.currentTheme(context).defaultTextColor,
                ),
              )),
        ));
    });
    return radioButtonsList;
  }
}
