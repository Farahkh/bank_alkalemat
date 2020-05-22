import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class AcoasticWeightWidget extends StatelessWidget {

  int acoasticGroupValue;

  @override
  Widget build(BuildContext context) {


    const padding_all = EdgeInsets.all(8.0);
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
              buildNeumorphicRadio(context, 101, filter),
              buildNeumorphicRadio(context, 102, filter),
              buildNeumorphicRadio(context, 103, filter),
              buildNeumorphicRadio(context, 110, filter),
              buildNeumorphicRadio(context, 111, filter),
              buildNeumorphicRadio(context, 112, filter),
              buildNeumorphicRadio(context, 113, filter),
              buildNeumorphicRadio(context, 120, filter),
              buildNeumorphicRadio(context, 121, filter),
              buildNeumorphicRadio(context, 122, filter),
              buildNeumorphicRadio(context, 123, filter),
              buildNeumorphicRadio(context, 130, filter),
              buildNeumorphicRadio(context, 131, filter),
              buildNeumorphicRadio(context, 132, filter),
              buildNeumorphicRadio(context, 133, filter),
              buildNeumorphicRadio(context, 201, filter),
              buildNeumorphicRadio(context, 202, filter),
              buildNeumorphicRadio(context, 203, filter),
              buildNeumorphicRadio(context, 210, filter),
              buildNeumorphicRadio(context, 211, filter),
              buildNeumorphicRadio(context, 212, filter),
              buildNeumorphicRadio(context, 213, filter),
              buildNeumorphicRadio(context, 220, filter),
              buildNeumorphicRadio(context, 223, filter),
              buildNeumorphicRadio(context, 230, filter),
              buildNeumorphicRadio(context, 233, filter),
              buildNeumorphicRadio(context, 301, filter),
              buildNeumorphicRadio(context, 302, filter),
              buildNeumorphicRadio(context, 303, filter),
              buildNeumorphicRadio(context, 310, filter),
              buildNeumorphicRadio(context, 311, filter),
              buildNeumorphicRadio(context, 320, filter),
              buildNeumorphicRadio(context, 321, filter),
              buildNeumorphicRadio(context, 322, filter),
              buildNeumorphicRadio(context, 331, filter),
              buildNeumorphicRadio(context, 332, filter),
              buildNeumorphicRadio(context, 333, filter),
            ],
          );
        }),
      ),
    );
  }

  NeumorphicRadio<int> buildNeumorphicRadio(
      BuildContext context, int buttonValue, Filter filter) {
    return NeumorphicRadio(
      isEnabled: filter.acousticButtonStatus(buttonValue),
      style: kRadioButtonStyle(context),
      padding: EdgeInsets.all(5.0),
      groupValue: acoasticGroupValue,
      value: buttonValue,
      onChanged: (value) {
            filter.soundWieght = value;
      },
      child: Center(
          child: Text(
        buttonValue.toString(),
        style: TextStyle(
          color: NeumorphicTheme.currentTheme(context).defaultTextColor,
        ),
      )),
    );
  }
}
