import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

class IntrayPage extends StatefulWidget {
  IntrayPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      child: ListView(
        padding: EdgeInsets.only(
          top: 100,
        ),
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    return [
      Container(
        height: 300,
        color: redColor,
      ),
      Container(
        height: 600,
        color: Colors.green,
      ),
      Container(
        height: 400,
        color: Colors.yellow,
      ),
      Container(
        height: 200,
        color: Colors.blue,
      ),
    ];
  }
}
