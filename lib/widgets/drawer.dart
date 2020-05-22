import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
          child: Neumorphic(
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: Neumorphic(
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  IconData(
                    1781,
                  ),
                  size: 28,
                  color: NeumorphicTheme.currentTheme(context).defaultTextColor,
                ),
                title: Text(
                  'نوع السكون',
                  style: TextStyle(fontSize: 18,color:NeumorphicTheme.currentTheme(context).defaultTextColor,),
                ),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, '/');
                },
              ),
              SokonTypeWidget(),
              ListTile(
                leading: Icon(
                  IconData(
                    1769,
                  ),
                  size: 28,
                  color: NeumorphicTheme.currentTheme(context).defaultTextColor,
                ),
                title: Text(
                  'الوزن الإيقاعي',
                  style: TextStyle(fontSize: 18,color:NeumorphicTheme.currentTheme(context).defaultTextColor,),
                ),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, '/');
                },
              ),
              RythmicWeightWidget(),
              ListTile(
                leading: Icon(
                  IconData(
                    64413,
                  ),
                  size: 28,
                  color: NeumorphicTheme.currentTheme(context).defaultTextColor,
                ),
                title: Text(
                  'الوزن الصوتي',
                  style: TextStyle(fontSize: 18,color:NeumorphicTheme.currentTheme(context).defaultTextColor,),
                ),
                onTap: () {
                  //Navigator.pop(context);
                  //Navigator.pushNamed(context, '/');
                },
              ),
              AcoasticWeightWidget(),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    ));
  }


}
