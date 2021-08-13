import 'package:flutter/material.dart';

class PaddingWidgetDetails extends StatelessWidget {
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

    return Padding(
      padding: EdgeInsets.all(150),
      child: Text('Hello World',style: TextStyle(fontSize: 20),),
    );
  }
}

