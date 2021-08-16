import 'package:flutter/material.dart';

class ListViewWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Widget List'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('List View 1')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('List View 2')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('List View 3')),
        ),
      ],
    );
  }
}

