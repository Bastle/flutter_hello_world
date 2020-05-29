import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert' show json;

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _getListData(),
    );
  }
  _getListData(){
    List<Widget> widgets = [];
    for(int i = 0; i < 50; i++){
      widgets.add(Padding(padding: EdgeInsets.all(10.0), child: Text("Row $i")));
    }
    return widgets;
  }
}


class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}): super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage>{
  List widgets = [];

  @override
  void initState(){
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int position){
//        return getRow(position);
        return getItem(widgets[position], position);
      },
    );
  }

  Widget getRow(int i){
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Row $i"),
      ),
      onTap: (){
        setState(() {
          widgets.add(getRow(widgets.length + 1));
          print('row $i');
        });
      },
    );
  }

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
    List list = json.decode(response.toString())["result"]["rankTypeListMap"]["E"];
    print(list);
    for(var item in list){
      print(item["teamName"]);
      widgets.add(item["teamName"]);
    }
  }
  Widget getItem(teamName, int position){
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text('$teamName $position'),
      ),
      onTap: (){
        setState(() {
          print('row $teamName $position');
        });
      },
    );
  }
}