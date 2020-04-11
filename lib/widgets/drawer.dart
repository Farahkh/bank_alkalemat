import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../constants.dart';
import 'AcousticWeightWidget.dart';
import 'RythmicWeightWidget.dart';
import 'SokonTypeWidget.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.mic),
            title: Text('Sokon Type'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, '/');
            },
          ),
          SokonTypeWidget(),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Rythemic Weight'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, '/');
            },
          ),
          RythmicWeightWidget(),
          ListTile(
            leading: Icon(Icons.radio),
            title: Text('Acoustic Weight'),
            onTap: () {
              //Navigator.pop(context);
              //Navigator.pushNamed(context, '/');
            },
          ),
          AcoasticWeightWidget(),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              NeumorphicButton(
                style: kButtonStyle,
                child: Text('Sort'),
                onClick: () {
                  Navigator.pop(context);
                },
              ),
              NeumorphicButton(
                style: kButtonStyle,
                child: Text('Reset'),
                onClick: () {},
              )
            ],
          )
        ],
      ),
    ));
  }

  NeumorphicRadio buildNeumorphicRadio(
      int bottunValue, Function sortController, int groupValue) {
    return NeumorphicRadio(
      style: kRadioButtonStyle,
      padding: EdgeInsets.all(10.0),
      groupValue: groupValue,
      value: bottunValue,
      onChanged: (value) {
        setState(() {
          groupValue = value;
          sortController();
        });
      },
      child: Center(child: Text(bottunValue.toString())),
    );
  }
}
