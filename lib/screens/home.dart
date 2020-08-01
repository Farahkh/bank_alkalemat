import 'package:bankalkalemat/widgets/WordTypeWidget.dart';
import 'package:bankalkalemat/widgets/WordWeightWidget.dart';
import 'package:bankalkalemat/widgets/WordLettersWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatelessWidget{
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

//  @override
//  void initState(){
//Provider.of<Filter>(context)
//    super.initState();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                NeumorphicTheme.of(context).themeMode =
                NeumorphicTheme.isUsingDark(context)
                    ? ThemeMode.light
                    : ThemeMode.dark;
              },
              icon: NeumorphicTheme.isUsingDark(context)
                  ? Icon(Icons.wb_sunny)
                  : Icon(Icons.brightness_3))
        ],
        title: Text(title),
      ),
      body: Neumorphic(
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
          child: Column(mainAxisSize: MainAxisSize.max,
              children: <Widget>[
              Center(
                child: ListTile(
                  leading: Icon(
                    IconData(
                      1781,
                    ),
                    size: 28,
                    color: NeumorphicTheme.currentTheme(context).defaultTextColor,
                  ),
                  title: Text(
                    'حروف الكلمة',
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
              ),
              //TODO I need to change this class according to the new data
              Expanded(flex: 3,child: WordLettersWidget()),
              Center(
                child: ListTile(
                  leading: Icon(
                    IconData(
                      1769,
                    ),
                    size: 28,
                    color: NeumorphicTheme.currentTheme(context).defaultTextColor,
                  ),
                  title: Text(
                    'نوع الكلمة',
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
              ),
              //TODO I need to change this class according to the new data
              Expanded(flex: 5,child: WordTypeWidget()),
              SizedBox(
                height: 10,
              ),
//              FlatButton(
//                child: ListTile(
//                  title: Text(
//                    'معلومات عن التطبيق',
//                    style: TextStyle(
//                      color: NeumorphicTheme.currentTheme(context)
//                          .defaultTextColor,
//                    ),
//                  ),
//                  leading: Icon(
//                    Icons.info_outline,
//                    color:
//                    NeumorphicTheme.currentTheme(context).defaultTextColor,
//                  ),
//                ),
//                onPressed: () {
//                  _showModalBottomSheet(context, NeumorphicTheme.of(context));
//                },
//              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }

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