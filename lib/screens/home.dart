import 'dart:convert';

import 'package:bankalkalemat/WordsBankModel.dart';
import 'package:bankalkalemat/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[IconButton(icon: Icon(Icons.brightness_3))],
        title: Text(widget.title),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: FutureBuilder<WordBankModel>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.words.length,
                itemBuilder: (context, index) {
                  return Neumorphic(
                    style: NeumorphicStyle(
                      intensity: 0.5,
                      depth: 4,
                      surfaceIntensity: 0.25,
                      shape: NeumorphicShape.concave,
                      color: Colors.white,
                      lightSource: LightSource(2.0, 1.0),
                      oppositeShadowLightSource: false,
                    ),
                    boxShape: NeumorphicBoxShape.roundRect(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        intensity: 0.5,
                        depth: 4,
                        surfaceIntensity: 0.25,
                        shape: NeumorphicShape.concave,
                        color: Colors.white,
                        lightSource: LightSource(2.0, 1.0),
                        oppositeShadowLightSource: false,
                      ),
                      boxShape: NeumorphicBoxShape.roundRect(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              '${snapshot.data.words[index].word}',
                              style: TextStyle(
                                fontSize: 36,
                              ),
                            ),
                            Divider(
                              color: Colors.lightBlueAccent,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'نوع السكون',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'الوزن الإيقاعي',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'الوزن الصوتي',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('${snapshot.data.words[index].sokonType}'),
                                Text(
                                    '${snapshot.data.words[index].rythmicWieght}'),
                                Text(
                                    '${snapshot.data.words[index].soundWieght}'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<WordBankModel> getData() async {
    wait(5);
    String jsonString = await _loadAWordBankAsset();
    final jsonResult = json.decode(jsonString);

    return WordBankModel.fromJson(jsonResult);
  }

  Future<String> _loadAWordBankAsset() async {
    return await rootBundle.loadString('data/databank.json');
  }

  Future wait(int seconds) {
    return new Future.delayed(Duration(seconds: seconds), () => {});
  }
}
