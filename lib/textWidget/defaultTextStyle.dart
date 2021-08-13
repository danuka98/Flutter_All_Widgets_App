import 'package:flutter/material.dart';

class DefaultTextStyleWidgetDetails extends StatelessWidget {
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

    return Text(
      'This is a Default Text Style',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.right,
      overflow: TextOverflow.clip,
    );
  }
}

