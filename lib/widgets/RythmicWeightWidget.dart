import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class RythmicWeightWidget extends StatelessWidget {
  int rythemicGroupValue;

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
        rythemicGroupValue = filter.rythmicWieght;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildNeumorphicRadio(context, 110, filter),
            buildNeumorphicRadio(context, 111, filter),
            buildNeumorphicRadio(context, 101, filter),
          ],
        );
      }),
    );
  }

  NeumorphicRadio<int> buildNeumorphicRadio(
      BuildContext context, int buttonValue, Filter filter) {
    return NeumorphicRadio(
      isEnabled: filter.rythmicButtonStatus(buttonValue),
      style: kRadioButtonStyle(context),
      padding: EdgeInsets.all(10.0),
      groupValue: rythemicGroupValue,
      value: buttonValue,
      onChanged: (value) {
        filter.rythmicWieght = value;
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
