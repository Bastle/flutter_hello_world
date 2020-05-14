import 'package:flutter/material.dart';

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


//class SampleAppPage extends StatefulWidget {
//  SampleAppPage({Key key}): super(key: key);
//
//  @override
//  _SampleAppPageState createState() => _SampleAppPageState();
//}
//
//class _SampleAppPageState extends State<SampleAppPage>{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ListView.builder(
//        itemBuilder:()
//    );
//  }
//}