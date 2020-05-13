import 'package:flutter/material.dart';
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
            child: Column(
              children: <Widget>[
                Text('my exciting experience is in Japan'),
                CustomCard(
                  index: 1,
                  onPress: (){
                    print('card');
                  },
                )
              ],
            )
        )
    );
  }
}
