import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
    return Neumorphic(
      padding: EdgeInsets.all(10.0),
      style: NeumorphicStyle(
        color: Colors.grey[300],
        depth: -5.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: rythemicGroupValue,
            value: 110,
            onChanged: (value) {
              setState(() {
                rythemicGroupValue = value;
              });
            },
            child: Center(child: Text('110')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: rythemicGroupValue,
            value: 111,
            onChanged: (value) {
              setState(() {
                rythemicGroupValue = value;
              });
            },
            child: Center(child: Text('111')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: rythemicGroupValue,
            value: 101,
            onChanged: (value) {
              setState(() {
                rythemicGroupValue = value;
              });
            },
            child: Center(child: Text('101')),
          ),
        ],
      ),
    );
  }
}
