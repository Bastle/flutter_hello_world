import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';
import 'package:dio/dio.dart';
import 'person.dart';
import 'MyApp.dart';
import 'CustomCard.dart';
//import 'data:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


void main() {
  Future<String> loadAsset() async {
    var data = await rootBundle.loadString('my-assets/data.json');
    return data;
  }
  print(loadAsset());
  runApp(MyApp());

   var a;
   a?.print('1')??print('2');
   a = 1222;
   print(a);
   a = 'hello world';
   print(a);
   a = [1,2,3, '123123'];
   print(a);
//   double c = 32.5;
//   int d = 20;
//   print(c + d);
//   print(c - d);
//   print(c / d);
//   print(c ~/ d);
//   print(c % d);
//   print(d.isEven);
//   print(d.isOdd);
//   print(c.floor());
//   print(c.ceil());
//   print(c.round());
//   print(c.toInt());
//   print(d.toDouble());

//   String str1 = 'hello';
//   String str2 = "hello";
//   String str3 = '''hello
// sdfaefs''';
//   String str4 = 'hello \n world';
//   String str5 = r'hello \n world';
//   print(str3);
//   print(str4);
//   print(str5);

  // var list1 = [1, "23", '002'];
  // list1[0] = 'aaa';
  // list1.add('new');
  // list1.insert(1, 'new2');

  // list1.remove('new2');
  // print(list1);
  // print(list1.indexOf('new'));
  //list1.asMap()
  // // list1.clear();
  

  
  // list1.sort();
  // list1.forEach(print);
  // list1.subList();

  // var list2 = const [1,2,3,'weqwe'];
  // // list2[0] = 'aaa';
  // print(list1);
  // print(list2);

// var map1 = new Map();
// var map2 = {"first": 'this is', 2: "your happiness"};
// print(map1);
// print(map2.keys);
// print(map2.values);
// print(map2.containsKey("first"));
// print(map2.remove("first"));

// int a = 10;
// int b = 5;

// b ??= 20;
// var c = a ?? b;
// print(b);

// break 终止当前循环
// continue 跳过此次循环
// print(getPerson('jack', 21));
// printPerson('tom', gender: 'male');
// printPerson2('james');

// String language = 'Dart';
// switch(language){
//   case 'Dart': 
//     print('this is Dart');
//     break;
//   default:
//     break;
// }
   getInfo();
  // Function func = printHello;
  // func();
  // var list = [1,2,3,4];
  // List list2 = ['h', 'e', 'l', 'l', 'o'];
  // List listTimes(List list, f(str)){
  //   for(var index = 0; index < list.length; index++){
  //     list[index] = f(list[index]);
  //   }
  //   return list;
  // }
  // times(str){
  //   return str*3;
  // }
  // print(listTimes(list, times));
  // print(listTimes(list2, times));
  // print(listTimes(list2, (str) => str*2));
  // closure();
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

  var response;
  response = await dio.get(
    "http://games.mobileapi.hupu.com/6/7.3.4/basketballapi/teamStandingList?client=&webp=0",
    queryParameters: {
      "offline": "json",
      "competitionLeagueType": "nba",
      "competitionType": "nba"
    }
  );
//  print(response);
  print(response);
//  print(json.decode(response));
  // print(response.data.toString());
}


class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'sword & sheld'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
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

