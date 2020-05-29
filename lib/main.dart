import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/rendering.dart';
import 'package:english_words/english_words.dart';
import 'package:dio/dio.dart';
import 'person.dart';
import 'MyApp.dart';
import 'dart:convert' show json;
import 'CustomCard.dart';
//import 'data:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


void main() {
  Future<String> loadAsset() async {
    var data = await rootBundle.loadString('my-assets/data.json');
    return data;
  }
  print(loadAsset());
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
//  getInfo();
  classAndObject();
  

}
closure(){
  a(){
    int count = 1;
    return (){
      print(count++);
    };
  }
  var a1 = a();
  a1();
  a1();
  a1();
}
classAndObject(){
  var person = Person('tom', 20); 
  var rect = Rectangle();
  rect.width = 10;
  rect.height = 20;
  print(rect.area);
  person.work();
}


String getPerson(String name, int age) => 'name=$name, age=$age';

// printPerson (name, age){
//   print('name=$name, age=$age');
// }

// printPerson(String name, {int age = 30, String gender = 'female'}){
//   print('name=$name, age=$age, gender=$gender');
// }
// printPerson2(String name, [int age, String gender]){
//   print('name=$name, age=$age, gender=$gender');
// }

// void printHello(){
//   print('hello');
// }

void getInfo () async {
  Dio dio =  Dio();

//  var response;
  Response response = await dio.get(
    "http://games.mobileapi.hupu.com/6/7.3.4/basketballapi/teamStandingList?client=&webp=0",
    queryParameters: {
      "offline": "json",
      "competitionLeagueType": "nba",
      "competitionType": "nba"
    }
  );
//  print(response);
//  print(response.toString());
//  print(json.decode(response.toString()));
  List list = json.decode(response.toString())["result"]["rankTypeListMap"]["E"];
  print(list);
  for(var item in list){
    print(item["teamName"]);
  }
}


class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'sword & sheld'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.asPascalCase)
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have click the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RandomWordsWidget(),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push( context, 
                  MaterialPageRoute( builder: (context){
                    return NewRoute();
                  })
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new route form chengyubing")
      ),
      body: Center(
        child: Text("holy shit1111"),
      ),
    );
  }
}
class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,
  }) :  super(key : key);
  final String text;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('tip route'),

      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, 'this is back'),
                child: Text('返回'),
              )
            ]
          ),
        ),
      ),
    );
  }
}
class RouterTestRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Center(
      child: RaisedButton(
        onPressed: () async {
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context){
                return TipRoute(text: "this is xxxxxttrttrrttt");
              }
            )
          );

          print('路由返回值：$result');
        },
        child: Text("打开提示页")
      ),
    );
  }
}

