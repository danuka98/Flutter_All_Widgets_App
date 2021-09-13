import 'package:flutter/material.dart';

class GridViewWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('GridView Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Center(
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        children: <Widget>[
          Container(
            width: 10,
            height: 10,
            color: Colors.amber,
          ),
          Container(
            width: 10,
            height: 10,
            color: Colors.blue,
          ),
          Container(
            width: 10,
            height: 10,
            color: Colors.red,
          ),
          Container(
            width: 10,
            height: 10,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

