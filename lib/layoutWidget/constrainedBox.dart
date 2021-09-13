import 'package:flutter/material.dart';

class ConstrainedBoxWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('ConstrainedBox Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200,maxWidth: 200),
        child: const Card(
          color: Colors.white24,
          child: Text('ConstrainedBox Widget'),),
      ),
    );
  }
}

