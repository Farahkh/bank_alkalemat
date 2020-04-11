import 'package:bankalkalemat/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tempList = ['test', 'test', 'test', 'test', 'test', 'test', 'test'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: AppDrawer(),
      body: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: tempList.length,
              itemBuilder: (BuildContext context, int index) {
                return Neumorphic(
                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  child: Center(child: Text('Entry ${tempList[index]}')),
                );
              })),
    );
  }
}
