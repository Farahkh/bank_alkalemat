import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'AcousticWeightWidget.dart';
import 'RythmicWeightWidget.dart';
import 'SokonTypeWidget.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

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
                  style: TextStyle(
                    fontSize: 18,
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor,
                  ),
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
                  style: TextStyle(
                    fontSize: 18,
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor,
                  ),
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
                  style: TextStyle(
                    fontSize: 18,
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor,
                  ),
                ),
                onTap: () {
                  //Navigator.pop(context);
                  //Navigator.pushNamed(context, '/');
                },
              ),
              AcoasticWeightWidget(),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                child: ListTile(
                  title: Text(
                    'معلومات عن التطبيق',
                    style: TextStyle(
                      color: NeumorphicTheme.currentTheme(context)
                          .defaultTextColor,
                    ),
                  ),
                  leading: Icon(
                    Icons.info_outline,
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor,
                  ),
                ),
                onPressed: () {
                  _showModalBottomSheet(context, NeumorphicTheme.of(context));
                },
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void _showModalBottomSheet(
      BuildContext context, NeumorphicThemeInherited themeData) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      enableDrag: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300.0,
          child: Neumorphic(
            style: NeumorphicStyle(
              color:
                  themeData.isUsingDark ? Color(0xFF30353A) : Color(0xFFF6F5F0),
              surfaceIntensity: 0.25,
              shape: NeumorphicShape.concave,
              oppositeShadowLightSource: false,
            ),
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Neumorphic(
              style: NeumorphicStyle(
                color: themeData.isUsingDark
                    ? Color(0xFF30353A)
                    : Color(0xFFF6F5F0),
                surfaceIntensity: 0.25,
                shape: NeumorphicShape.concave,
                oppositeShadowLightSource: false,
              ),
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'فكرة التطبيق',
                      style: TextStyle(
                        color: themeData.isUsingDark
                            ? Color(0xFFBDBEBF)
                            : Color(0xFF060709),
                      ),
                    ),
                    leading: Icon(
                      Icons.info_outline,
                      color: themeData.isUsingDark
                          ? Color(0xFFBDBEBF)
                          : Color(0xFF060709),
                    ),
                  ),
                  Text(
                    'للأستاذ صلاح احمد بلعلا',
                    style: TextStyle(
                      fontSize: 18,
                      color: themeData.isUsingDark
                          ? Color(0xFFBDBEBF)
                          : Color(0xFF060709),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
