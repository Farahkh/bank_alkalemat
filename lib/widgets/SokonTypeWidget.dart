import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
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
    sokonGroupValue=Provider.of<Filter>(context, listen: false).sokonType;
    return Neumorphic(
      padding: EdgeInsets.all(10.0),
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          color: Color(0x20000000),
          width: 0.4,
        ),
        depth: -5.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildNeumorphicRadio(context,0),
          buildNeumorphicRadio(context,1),
          buildNeumorphicRadio(context,2),
          buildNeumorphicRadio(context,3),
          buildNeumorphicRadio(context,4),
          buildNeumorphicRadio(context,5),
        ],
      ),
    );
  }

  NeumorphicRadio<int> buildNeumorphicRadio(BuildContext context, int buttonValue) {
    return NeumorphicRadio(
          padding: EdgeInsets.all(10.0),
          groupValue: sokonGroupValue,
          value: buttonValue,
          onChanged: (value) {
            setState(() {
              Provider.of<Filter>(context, listen: false).sokonType = value;

            });
          },
          child: Center(child: Text(buttonValue.toString(), style: TextStyle(color:NeumorphicTheme.currentTheme(context).defaultTextColor,),)),
        );
  }


}
