import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        ListTile(
          leading: Icon(Icons.music_note),
          title: Text('Rythemic Weight'),
          onTap: () {
            // Navigator.pop(context);
            // Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: Icon(Icons.radio),
          title: Text('Acoustic Weight'),
          onTap: () {
            //Navigator.pop(context);
            //Navigator.pushNamed(context, '/');
          },
        ),
      ],
    ));
  }
}
