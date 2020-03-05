import 'package:flutter/material.dart';
import 'screens/1.dart' deferred as screen1;
import 'screens/2.dart' deferred as screen2;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
              title: Text('Screen 1'),
              onTap: () {
                screen1.loadLibrary().then((_) => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => screen1.Screen1())));
              }),
          ListTile(
              title: Text('Screen 2'),
              onTap: () {
                screen2.loadLibrary().then((_) => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => screen2.Screen2())));
              }),
        ],
      ),
    );
  }
}
