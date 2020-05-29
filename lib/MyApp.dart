import 'package:flutter/material.dart';
import './src/MyListView.dart';
import 'CustomCard.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        title: 'hello world',
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'my menu',
                onPressed: null
            ),
            title: new Text('my example'),
            actions: <Widget>[
              IconButton(
                icon: new Icon(Icons.search),
                tooltip: 'search',
                onPressed: null,
              ),
            ]
        ),
        body: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: 200.0,
                  child: SampleAppPage(),
                ),
                Container(
                  width: 200.0,
                  child: SampleAppPage(),
                ),
              ],
            )
        )
    );
  }
}
