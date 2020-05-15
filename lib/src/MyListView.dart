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
    for(int i = 0; i < 100; i++){
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int position){
        return getRow(position);
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
}