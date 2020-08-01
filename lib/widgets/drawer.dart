import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'WordTypeWidget.dart';
import 'WordWeightWidget.dart';
import 'WordLettersWidget.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Neumorphic(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(10.0),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Neumorphic(
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(10.0),
            ),
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
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
              Expanded(child: WordWeightWidget()),
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
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(10.0),
              ),
              color:
                  themeData.isUsingDark ? Color(0xFF30353A) : Color(0xFFF6F5F0),
              surfaceIntensity: 0.25,
              shape: NeumorphicShape.concave,
              oppositeShadowLightSource: false,
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(10.0),
                ),
                color: themeData.isUsingDark
                    ? Color(0xFF30353A)
                    : Color(0xFFF6F5F0),
                surfaceIntensity: 0.25,
                shape: NeumorphicShape.concave,
                oppositeShadowLightSource: false,
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
