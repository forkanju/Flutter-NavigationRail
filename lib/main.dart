import 'package:flutter/material.dart';
import 'package:navigation_rail/one.dart';
import 'package:navigation_rail/two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ' Navigation Rail'),
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
  int _selectedIndex = 0;
  final _pages = [
    One(),
    Two(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(children: <Widget>[
          NavigationRail(
            backgroundColor: Colors.orange,
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: Icon(
                  Icons.wifi,
                  color: Colors.white,
                ),
                label: Text("Wifi"),
                selectedIcon: Icon(
                  Icons.wifi,
                  color: Colors.blue,
                ),
              ),
              NavigationRailDestination(
                icon: Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                ),
                label: Text("Sunny"),
                selectedIcon: Icon(
                  Icons.wb_sunny,
                  color: Colors.blue,
                ),
              ),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (val){
              setState(() {
                _selectedIndex = val;
              });
            },
          ),
          Expanded(child: Container(
            child: _pages[_selectedIndex],
          ),)
        ]),
      ),
    );
  }
}
