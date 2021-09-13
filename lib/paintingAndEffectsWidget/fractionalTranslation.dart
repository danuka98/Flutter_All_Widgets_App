import 'dart:ui';

import 'package:flutter/material.dart';

class FractionalTranslationWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Fractional Translations Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.black38,
      child: FractionalTranslation(
        child: Text(
          'Fractional Translation',
          style: TextStyle(color: Colors.teal, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        translation: const Offset(0.5,1),
      ),
    );
  }
}

