import 'package:flutter/material.dart';

class SemanticsWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Semantics Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Semantics(
      child: Image(
        image: AssetImage('assets/images/bird.jpg'),
      ),
      label: 'An Image of Bird',
      enabled: true,
      readOnly: true,
    );
  }
}

