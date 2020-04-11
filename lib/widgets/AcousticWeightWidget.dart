import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
    final Padding_all = EdgeInsets.all(8.0);
    return Expanded(
      child: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: <Widget>[
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 101,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('101')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 102,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('102')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 103,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('103')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 110,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('110')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 111,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('111')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 112,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('112')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 113,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('113')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 120,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('120')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 121,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('121')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 122,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('122')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 123,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('123')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 130,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('130')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 131,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('131')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 132,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('132')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 133,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('133')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 201,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('201')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 202,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('202')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 203,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('203')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 210,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('210')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 211,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('211')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 212,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('212')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 101,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('101')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 220,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('220')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 223,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('223')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 230,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('230')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 233,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('233')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 301,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('301')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 302,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('302')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 303,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('303')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 310,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('310')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 311,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('311')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 320,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('320')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 321,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('321')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 322,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('322')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 331,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('331')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 332,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('332')),
          ),
          NeumorphicRadio(
            style: kRadioButtonStyle,
            padding: Padding_all,
            groupValue: acoasticGroupValue,
            value: 333,
            onChanged: (value) {
              setState(() {
                acoasticGroupValue = value;
              });
            },
            child: Center(child: Text('333')),
          ),
        ],
      ),
    );
  }
}
