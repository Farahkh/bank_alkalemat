import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class SokonTypeWidget extends StatelessWidget {
  int sokonGroupValue;

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
        sokonGroupValue = Provider.of<Filter>(context, listen: false).sokonType;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildNeumorphicRadio(context, 0, filter),
            buildNeumorphicRadio(context, 1, filter),
            buildNeumorphicRadio(context, 2, filter),
            buildNeumorphicRadio(context, 3, filter),
            buildNeumorphicRadio(context, 4, filter),
            buildNeumorphicRadio(context, 5, filter),
          ],
        );
      }),
    );
  }

  NeumorphicRadio<int> buildNeumorphicRadio(
      BuildContext context, int buttonValue, Filter filter) {
    return NeumorphicRadio(
      isEnabled: filter.sokonButtonStatus(buttonValue),
      style: kRadioButtonStyle(context),
      padding: EdgeInsets.all(10.0),
      groupValue: sokonGroupValue,
      value: buttonValue,
      onChanged: (value) {
        filter.sokonType = value;
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
