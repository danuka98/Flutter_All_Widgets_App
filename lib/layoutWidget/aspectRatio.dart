import 'package:flutter/material.dart';

class AspectRatioWidgetDetails extends StatelessWidget {
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

    return Container(
      color: Colors.blue[100],
      alignment: Alignment.center,
      width: double.infinity,
      height: 110,
      child: AspectRatio(
        aspectRatio: 16/9,
        child: Container(
          color: Colors.green[600],
        ),
      ),
    );
  }
}

