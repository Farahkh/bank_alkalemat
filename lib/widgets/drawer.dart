import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
    List<bool> skonisSelected = List.generate(6, (_) => false);
    List<bool> rythmeisSelected = List.generate(3, (_) => false);
    List<bool> soundisSelected = List.generate(37, (_) => false);
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Farah Khatib"),
          accountEmail: Text("test@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.pink,
            child: Text(
              "F",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        //decoration: BoxDecoration(color: Colors.teal),
        ListTile(
          leading: Icon(Icons.mic),
          title: Text('Sokon Type'),
          onTap: () {
            // Navigator.pop(context);
            // Navigator.pushNamed(context, '/');
          },
        ),
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
        ListTile(
          leading: Icon(Icons.music_note),
          title: Text('Rythemic Weight'),
          onTap: () {
            // Navigator.pop(context);
            // Navigator.pushNamed(context, '/');
          },
        ),
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
        ListTile(
          leading: Icon(Icons.radio),
          title: Text('Acoustic Weight'),
          onTap: () {
            //Navigator.pop(context);
            //Navigator.pushNamed(context, '/');
          },
        ),
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
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            NeumorphicButton(
              style: NeumorphicStyle(
                color: Colors.white,
                depth: 5,
                intensity: 0.32,
              ),
              child: Text('Sort'),
              onClick: () {},
            ),
            NeumorphicButton(
              style: NeumorphicStyle(
                color: Colors.white,
                depth: 5,
                intensity: 0.32,
              ),
              child: Text('Reset'),
              onClick: () {},
            )
          ],
        )
      ],
    ));
  }
}
