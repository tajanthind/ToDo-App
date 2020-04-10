import 'package:flutter/material.dart';
import 'models/global.dart';
import 'UI/Intray/intray_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      //title: 'Flutter Demo',
      //theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: Container(
            child: Stack(
              children: <Widget>[
                TabBarView(
                  children: [
                    IntrayPage(),
                    new Container(
                      color: Colors.orange,
                    ),
                    new Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Intray",
                        style: intrayTitleStyle,
                      ),
                      Container(),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(
                    top: 125,
                    left: MediaQuery.of(context).size.width * 0.5 - 40,
                  ),
                  child: FloatingActionButton(
                    elevation: 10,
                    child: Icon(
                      Icons.add,
                      size: 70,
                    ),
                    backgroundColor: redColor,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          appBar: AppBar(
            elevation: 0,
            title: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.rss_feed),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                ),
              ],
              labelColor: darkGreyColor,
              unselectedLabelColor: redColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: darkGreyColor,
            ),
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
