import 'package:bankalkalemat/WordsBankModel.dart';
import 'package:bankalkalemat/widgets/WordWeightWidget.dart';
import 'package:bankalkalemat/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import '../Filterparameters.dart';

class WordsList extends StatelessWidget {
  WordsList({Key key, this.title, this.context}) : super(key: key);
  final String title;
  BuildContext context;
  @override
  Widget build(context) {
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
      drawer: AppDrawer(),
      body: NeumorphicBackground(
        child: Row(
          children: <Widget>[
//            Expanded(child: WordWeightWidget()),
            Expanded(
              child: Consumer<Filter>(builder: (context, filter, child) {
//            return filter.params.isEmpty
                print('filter on WordsList screen ${filter.params}');
                return buildFutureBuilderWithFilter(context, filter);
//                : buildFutureBuilderWithFilter(context, filter);
              }),
            ),
          ],
        ),
      ),
    );
  }

  FutureBuilder<WordBankModel> buildFutureBuilderWithoutFilter(Filter filter) {
    return FutureBuilder(
        future: WordBankModel.LoadWordList(filter),
        builder: (BuildContext context, AsyncSnapshot<WordBankModel> snapshot) {
          WordBankModel wordsList = snapshot.data;
          print('load filtered words list in WordsList: ${wordsList.words}');
          if (snapshot.hasData) {
//            if (filter.params.isNotEmpty) {
//              wordsList = filter.filterList(wordsList);
//              print(wordsList.words);
//            }
            return ListView.builder(
              itemCount: wordsList.words.length,
              itemBuilder: (context, index) {
                return Neumorphic(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(10.0),
                    ),
                    surfaceIntensity: 0.25,
                    shape: NeumorphicShape.concave,
                    oppositeShadowLightSource: false,
                  ),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10.0),
                      ),
                      surfaceIntensity: 0.25,
                      shape: NeumorphicShape.concave,
                      oppositeShadowLightSource: false,
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
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Text(
//                            'نوع السكون',
//                            style: TextStyle(
//                              fontSize: 12,
//                              color: NeumorphicTheme.currentTheme(context)
//                                  .defaultTextColor,
//                              fontWeight: FontWeight.bold,
//                            ),
//                          ),
//                          Text(
//                            'الوزن الإيقاعي',
//                            style: TextStyle(
//                              fontSize: 12,
//                              color: NeumorphicTheme.currentTheme(context)
//                                  .defaultTextColor,
//                              fontWeight: FontWeight.bold,
//                            ),
//                          ),
//                          Text(
//                            'الوزن الصوتي',
//                            style: TextStyle(
//                              fontSize: 12,
//                              color: NeumorphicTheme.currentTheme(context)
//                                  .defaultTextColor,
//                              fontWeight: FontWeight.bold,
//                            ),
//                          ),
//                        ],
//                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        height: 5,
                        color: NeumorphicTheme.accentColor(context),
                      ),
                      SizedBox(
                        height: 5,
                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Text(
//                            '${wordsList.words[index].word_letters.toString()}',
//                            style: TextStyle(
//                              fontSize: 12,
//                              color: NeumorphicTheme.currentTheme(context)
//                                  .defaultTextColor,
//                            ),
//                          ),
//                          Text(
//                            '${wordsList.words[index].word_type.toString()}',
//                            style: TextStyle(
//                              color: NeumorphicTheme.currentTheme(context)
//                                  .defaultTextColor,
//                              fontSize: 12,
//                            ),
//                          ),
//                          Text(
//                            '${wordsList.words[index].word_wieght.toString()}',
//                            style: TextStyle(
//                              fontSize: 12,
//                              color: NeumorphicTheme.currentTheme(context)
//                                  .defaultTextColor,
//                            ),
//                          ),
//                        ],
//                      ),
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
  }

  Column buildFutureBuilderWithFilter(BuildContext context, Filter filter) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'حروف الكلمة',
                  style: TextStyle(
                    fontSize: 16,
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'نوع الكلمة',
                  style: TextStyle(
                    fontSize: 16,
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'وزن الكلمة',
                  style: TextStyle(
                    fontSize: 16,
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 5,
              color: NeumorphicTheme.accentColor(context),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                filter.params['letters'] != null
                    ? Text(
                        '${filter.params['letters']}',
                        style: TextStyle(
                          fontSize: 16,
                          color: NeumorphicTheme.currentTheme(context)
                              .defaultTextColor,
                        ),
                      )
                    : Text(
                        '-',
                        style: TextStyle(
                          fontSize: 16,
                          color: NeumorphicTheme.currentTheme(context)
                              .defaultTextColor,
                        ),
                      ),
                filter.params['type'] != null
                    ? Text(
                        '${filter.params['type']}',
                        style: TextStyle(
                          color: NeumorphicTheme.currentTheme(context)
                              .defaultTextColor,
                          fontSize: 16,
                        ),
                      )
                    : Text(
                        '-',
                        style: TextStyle(
                          color: NeumorphicTheme.currentTheme(context)
                              .defaultTextColor,
                          fontSize: 16,
                        ),
                      ),
                filter.params['wieght'] != null
                    ? Text(
                        '${filter.params['wieght']}',
                        style: TextStyle(
                          fontSize: 16,
                          color: NeumorphicTheme.currentTheme(context)
                              .defaultTextColor,
                        ),
                      )
                    : Text(
                        '-',
                        style: TextStyle(
                          fontSize: 16,
                          color: NeumorphicTheme.currentTheme(context)
                              .defaultTextColor,
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        Expanded(
          child: FutureBuilder(
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
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10.0),
                          ),
                          surfaceIntensity: 0.25,
                          shape: NeumorphicShape.concave,
                          oppositeShadowLightSource: false,
                        ),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10.0),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10.0),
                            ),
                            surfaceIntensity: 0.25,
                            shape: NeumorphicShape.concave,
                            oppositeShadowLightSource: false,
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
                          ]),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              }),
        ),
      ],
    );
  }
}
