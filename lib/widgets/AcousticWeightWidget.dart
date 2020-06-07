import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class AcoasticWeightWidget extends StatelessWidget {

  int acoasticGroupValue;
  List soundWieghtGroup= [101, 102, 103, 110, 111, 112, 113, 120, 121, 122, 123, 130, 131, 132, 133, 201, 202, 203, 210, 211, 212, 213, 220, 223, 230, 233, 301, 302, 303, 310, 311, 320, 321, 322, 331, 332, 333];

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Neumorphic(
        padding: EdgeInsets.all(5.0),
        style: NeumorphicStyle(
          border: NeumorphicBorder(
            color: Color(0x20000000),
            width: 0.4,
          ),
          depth: -5.0,
        ),
        child: Consumer<Filter>(builder: (context, filter, child) {
          acoasticGroupValue =
              filter.soundWieght;
          return GridView.count(
            padding: EdgeInsets.all(8.0),
            crossAxisCount: 4,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            children: <Widget>[
              ...buildNeumorphicRadio(context, filter),

            ],
          );
        }),
      ),
    );
  }



  List<NeumorphicRadio> buildNeumorphicRadio(
      BuildContext context, Filter filter) {
    List<NeumorphicRadio> radioButtonsList = new List();
soundWieghtGroup.forEach((element) {
  if (filter.acousticButtonStatus(element))
    radioButtonsList.add(NeumorphicRadio(
      style: kRadioButtonStyle(context),
      padding: EdgeInsets.all(5.0),
      groupValue: acoasticGroupValue,
      value: element,
      onChanged: (value) {
        filter.soundWieght = value;
        if(value!=null)
        Navigator.pop(context);
      },
      child: Center(
          child: Text(
            element.toString(),
            style: TextStyle(
              color: NeumorphicTheme.currentTheme(context).defaultTextColor,
            ),
          )),
    ),);
});
    return radioButtonsList;
  }
}
