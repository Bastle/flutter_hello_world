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
            child: Column(
              children: <Widget>[
                Text('my exciting experience is in Japan'),
                CustomCard(
                  index: 1,
                  onPress: (){
                    print('card');
                  },
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        width: 50.0,
                        height: 100.0,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 50.0,
                        height: 50.0,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 100.0,
                        height: 100.0,
                      ),
//                      Container(
//                        width: 500.0,
//                        height: 200.0,
//                        child: MyListView(),
//                      ),
                      Container(
                        width: 500.0,
                        height: 400.0,
                        child: SampleAppPage(),
                      )
                    ],
                  ),
                ),
                Stack(
                  alignment: const Alignment(0.6, 0.6),
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://avatars3.githubusercontent.com/u/14101776?v=4"
                      )
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Text('Flutter')
                    ),

                  ],
                )
              ],
            )
        )
    );
  }
}
