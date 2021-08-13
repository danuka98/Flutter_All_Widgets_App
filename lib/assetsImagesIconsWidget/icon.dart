import 'package:flutter/material.dart';

class IconWidgetDetails extends StatelessWidget {
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
      padding: const EdgeInsets.all(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 25,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 25,
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 25,
          ),
          Icon(
            Icons.access_alarm,
            color: Colors.yellow,
            size: 25,
          ),
          Icon(
            Icons.accessibility,
            color: Colors.brown,
            size: 25,
          ),
        ],
      ),
    );
  }
}

