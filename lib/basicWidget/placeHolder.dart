import 'package:flutter/material.dart';

class PlaceHolderWidgetDetails extends StatelessWidget {
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
    return Center(
      child: Container(
        width: 150,
        height: 150,
        child: Placeholder(
            fallbackHeight: 150,
            fallbackWidth: 150,
            color: Colors.orange,
            strokeWidth: 10,
        ),
      ),
    );
  }
}

