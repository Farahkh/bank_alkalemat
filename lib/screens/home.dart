import 'package:bankalkalemat/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Sokon Type'),
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
            Text('Rhythmic weight'),
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
            Text('Acoustic weight'),
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
