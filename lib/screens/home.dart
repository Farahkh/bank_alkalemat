import 'dart:convert';

import 'package:bankalkalemat/WordsBankModel.dart';
import 'package:bankalkalemat/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                NeumorphicTheme.of(context).usedTheme =
                    NeumorphicTheme.isUsingDark(context)
                        ? UsedTheme.LIGHT
                        : UsedTheme.DARK;
              },
              icon: NeumorphicTheme.isUsingDark(context)
                  ? Icon(Icons.wb_sunny)
                  : Icon(Icons.brightness_3))
        ],
        title: Text(title),
      ),
      drawer: AppDrawer(),
      body: NeumorphicBackground(
        child: Center(
          child: Consumer<Filter>(builder: (context, filter, child) {
//            print('params is: ${filter.params}');
            return FutureBuilder(
                future: WordBankModel.getData(),
                builder: (BuildContext context,
                    AsyncSnapshot<WordBankModel> snapshot) {
                  WordBankModel wordsList = snapshot.data;
                  if (snapshot.hasData) {
                    if (filter.params.isNotEmpty) {
                      wordsList = filter.filterList(wordsList);
                    }
                    return ListView.builder(
                      itemCount: wordsList.words.length,
                      itemBuilder: (context, index) {
                        return Neumorphic(
                          style: NeumorphicStyle(
                            surfaceIntensity: 0.25,
                            shape: NeumorphicShape.concave,
                            oppositeShadowLightSource: false,
                          ),
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(10.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              surfaceIntensity: 0.25,
                              shape: NeumorphicShape.concave,
                              oppositeShadowLightSource: false,
                            ),
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.all(20.0),
                            child: Column(children: <Widget>[
                              Text(
                                '${wordsList.words[index].word}',
                                style: TextStyle(
                                  color: NeumorphicTheme.currentTheme(context)
                                      .defaultTextColor,
                                  fontSize: 36,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    'نوع السكون',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          NeumorphicTheme.currentTheme(context)
                                              .defaultTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'الوزن الإيقاعي',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          NeumorphicTheme.currentTheme(context)
                                              .defaultTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'الوزن الصوتي',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          NeumorphicTheme.currentTheme(context)
                                              .defaultTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(
                                height: 3,
                                color: NeumorphicTheme.accentColor(context),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    '${wordsList.words[index].sokonType}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          NeumorphicTheme.currentTheme(context)
                                              .defaultTextColor,
                                    ),
                                  ),
                                  Text(
                                    '${wordsList.words[index].rythmicWieght}',
                                    style: TextStyle(
                                      color:
                                          NeumorphicTheme.currentTheme(context)
                                              .defaultTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '${wordsList.words[index].soundWieght}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          NeumorphicTheme.currentTheme(context)
                                              .defaultTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  return CircularProgressIndicator();
                });
          }),
        ),
      ),
    );
  }
}
