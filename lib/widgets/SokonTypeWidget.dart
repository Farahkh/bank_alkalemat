import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../constants.dart';

class SokonTypeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SokonTypeWidgetState();
  }
}

class SokonTypeWidgetState extends State<SokonTypeWidget> {
  int sokonGroupValue;

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
            groupValue: sokonGroupValue,
            value: 0,
            onChanged: (value) {
              setState(() {
                sokonGroupValue = value;
              });
            },
            child: Center(child: Text('0')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: sokonGroupValue,
            value: 1,
            onChanged: (value) {
              setState(() {
                sokonGroupValue = value;
              });
            },
            child: Center(child: Text('1')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: sokonGroupValue,
            value: 2,
            onChanged: (value) {
              setState(() {
                sokonGroupValue = value;
              });
            },
            child: Center(child: Text('2')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: sokonGroupValue,
            value: 3,
            onChanged: (value) {
              setState(() {
                sokonGroupValue = value;
              });
            },
            child: Center(child: Text('3')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: sokonGroupValue,
            value: 4,
            onChanged: (value) {
              setState(() {
                sokonGroupValue = value;
              });
            },
            child: Center(child: Text('4')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: EdgeInsets.all(10.0),
            groupValue: sokonGroupValue,
            value: 5,
            onChanged: (value) {
              setState(() {
                sokonGroupValue = value;
              });
            },
            child: Center(child: Text('5')),
          ), //            buildNeumorphicRadio('2', null),
//            buildNeumorphicRadio('3', null),
//            buildNeumorphicRadio('4', null),
//            buildNeumorphicRadio('5', null),
        ],
      ),
    );
  }
}
