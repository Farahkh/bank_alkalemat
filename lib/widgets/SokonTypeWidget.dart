import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class SokonTypeWidget extends StatelessWidget {
  int sokonGroupValue;
  List sokonTypeGroup = [0,1,2,3,4,5];

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
        sokonGroupValue = filter.sokonType;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ...buildNeumorphicRadio(context, filter),

          ],
        );
      }),
    );
  }

  List<NeumorphicRadio> buildNeumorphicRadio(
      BuildContext context, Filter filter) {
    List<NeumorphicRadio> radioButtonsList = new List();
    sokonTypeGroup.forEach((element) {
      if (filter.sokonButtonStatus(element))
        radioButtonsList.add(
          NeumorphicRadio(
            style: kRadioButtonStyle(context),
            padding: EdgeInsets.all(10.0),
            groupValue: sokonGroupValue,
            value: element,
            onChanged: (value) {
              filter.sokonType = value;
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
