import 'dart:ui';

import 'package:flutter/material.dart';

class ClipOvalWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('ClipOval Widget'),
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
      child: ClipOval(
        child: Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.fill),
      ),
    );
  }
}

