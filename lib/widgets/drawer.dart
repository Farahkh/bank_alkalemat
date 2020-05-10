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
          style: NeumorphicStyle(
          depth: -8.0,
            color: Colors.grey,
            lightSource: LightSource.topLeft,
        ),
        boxShape: NeumorphicBoxShape.roundRect(
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: Neumorphic(
          style: NeumorphicStyle(
            intensity: 5.0,
            depth: 4.0,
            lightSource: LightSource.topLeft,
            color: Colors.grey[300],
          ),
          boxShape: NeumorphicBoxShape.roundRect(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  IconData(
                    65150,
                  ),
                  size: 67,
                ),
                title: Text(
                  'نوع السكون',
                  style: TextStyle(fontSize: 18, color: Colors.black45),
                ),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, '/');
                },
              ),
              SokonTypeWidget(),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Text(
                  'الوزن الإيقاعي',
                  style: TextStyle(fontSize: 18, color: Colors.black45),
                ),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, '/');
                },
              ),
              RythmicWeightWidget(),
              ListTile(
                leading: Icon(Icons.radio),
                title: Text(
                  'الوزن الصوتي',
                  style: TextStyle(fontSize: 18, color: Colors.black45),
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
