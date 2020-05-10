import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class RythmicWeightWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RythmicWeightWidgetState();
  }
}

class RythmicWeightWidgetState extends State<RythmicWeightWidget> {
  int rythemicGroupValue;

  @override
  Widget build(BuildContext context) {
    rythemicGroupValue = Provider.of<Filter>(context, listen: false).rythmicWieght;

    return Neumorphic(
      padding: EdgeInsets.all(10.0),
      style: NeumorphicStyle(
        color: Colors.grey[300],
        depth: -5.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildNeumorphicRadio(context,110),
          buildNeumorphicRadio(context,111),
          buildNeumorphicRadio(context,101),
        ],
      ),
    );
  }

  NeumorphicRadio<int> buildNeumorphicRadio(BuildContext context, int buttonValue) {
    return NeumorphicRadio(
          style: kRadioButtonStyle,
          padding: EdgeInsets.all(10.0),
          groupValue: rythemicGroupValue,
          value: buttonValue,
          onChanged: (value) {
            setState(() {
              Provider.of<Filter>(context, listen: false).rythmicWieght = value;
            });
          },
          child: Center(child: Text(buttonValue.toString())),
        );
  }
}
