import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';
import '../constants.dart';

class AcoasticWeightWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AcoasticWeightWidgetState();
  }
}

class AcoasticWeightWidgetState extends State<AcoasticWeightWidget> {
  int acoasticGroupValue;

  @override
  Widget build(BuildContext context) {
    acoasticGroupValue = Provider.of<Filter>(context, listen: false).soundWieght;

    const padding_all = EdgeInsets.all(8.0);
    return Expanded(
      child: Neumorphic(
        padding: EdgeInsets.all(10.0),
        style: NeumorphicStyle(
          border: NeumorphicBorder(
            color: Color(0x20000000),
            width: 0.4,
          ),
          depth: -5.0,
        ),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          children: <Widget>[
            buildNeumorphicRadio(context,101),
            buildNeumorphicRadio(context,102),
            buildNeumorphicRadio(context,103),
            buildNeumorphicRadio(context,110),
            buildNeumorphicRadio(context,111),
            buildNeumorphicRadio(context,112),
            buildNeumorphicRadio(context,113),
            buildNeumorphicRadio(context,120),
            buildNeumorphicRadio(context,121),
            buildNeumorphicRadio(context,122),
            buildNeumorphicRadio(context,123),
            buildNeumorphicRadio(context,130),
            buildNeumorphicRadio(context,131),
            buildNeumorphicRadio(context,132),
            buildNeumorphicRadio(context,133),
            buildNeumorphicRadio(context,201),
            buildNeumorphicRadio(context,202),
            buildNeumorphicRadio(context,203),
            buildNeumorphicRadio(context,210),
            buildNeumorphicRadio(context,211),
            buildNeumorphicRadio(context,212),
            buildNeumorphicRadio(context,213),
            buildNeumorphicRadio(context,220),
            buildNeumorphicRadio(context,223),
            buildNeumorphicRadio(context,230),
            buildNeumorphicRadio(context,233),
            buildNeumorphicRadio(context,301),
            buildNeumorphicRadio(context,302),
            buildNeumorphicRadio(context,303),
            buildNeumorphicRadio(context,310),
            buildNeumorphicRadio(context,311),
            buildNeumorphicRadio(context,320),
            buildNeumorphicRadio(context,321),
            buildNeumorphicRadio(context,322),
            buildNeumorphicRadio(context,331),
            buildNeumorphicRadio(context,332),
            buildNeumorphicRadio(context,333),
          ],
        ),
      ),
    );
  }

  NeumorphicRadio<int> buildNeumorphicRadio(BuildContext context, int buttonValue) {
    return NeumorphicRadio(
      padding: EdgeInsets.all(5.0),
      groupValue: acoasticGroupValue,
      value: buttonValue,
      onChanged: (value) {
        setState(() {
          Provider.of<Filter>(context, listen: false).soundWieght = value;
        });
      },
      child: Center(child: Text(buttonValue.toString(), style: TextStyle(color:NeumorphicTheme.currentTheme(context).defaultTextColor,),)),
    );
  }
}
