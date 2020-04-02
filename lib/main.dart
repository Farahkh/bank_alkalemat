import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('ar')],
      title: 'بنك الكلمات',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'بنك الكلمات'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> skonisSelected = List.generate(6, (_) => false);
  List<bool> rythmeisSelected = List.generate(3, (_) => false);
  List<bool> soundisSelected = List.generate(37, (_) => false);
//  var wordbank =

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('نوع السكون'),
            ToggleButtons(
              disabledColor: Colors.black12,
              selectedColor: Colors.deepOrange,
              children: <Widget>[
                Text('0'),
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
                Text('5'),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0;
                      buttonIndex < skonisSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      skonisSelected[buttonIndex] = true;
                    } else {
                      skonisSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              isSelected: skonisSelected,
            ),
            Text('الوزن الايقاعي'),
            ToggleButtons(
              children: <Widget>[
                Text('101'),
                Text('110'),
                Text('111'),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0;
                      buttonIndex < rythmeisSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      rythmeisSelected[buttonIndex] = true;
                    } else {
                      rythmeisSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              isSelected: rythmeisSelected,
            ),
            Text('الوزن الصوتي'),
            ToggleButtons(
              children: <Widget>[
                Text('101'),
                Text('102'),
                Text('103'),
                Text('110'),
                Text('111'),
                Text('112'),
                Text('113'),
                Text('120'),
                Text('121'),
                Text('122'),
                Text('123'),
                Text('130'),
                Text('131'),
                Text('132'),
                Text('133'),
                Text('201'),
                Text('202'),
                Text('203'),
                Text('210'),
                Text('211'),
                Text('212'),
                Text('220'),
                Text('223'),
                Text('230'),
                Text('233'),
                Text('233'),
                Text('301'),
                Text('302'),
                Text('303'),
                Text('310'),
                Text('311'),
                Text('320'),
                Text('321'),
                Text('322'),
                Text('331'),
                Text('332'),
                Text('333'),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0;
                      buttonIndex < soundisSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      soundisSelected[buttonIndex] = true;
                    } else {
                      soundisSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              isSelected: soundisSelected,
            ),
          ],
        ),
      ),
    );
  }
}
