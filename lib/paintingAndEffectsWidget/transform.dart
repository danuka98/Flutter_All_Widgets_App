import 'dart:ui';

import 'package:flutter/material.dart';

class TransformWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Transform Widget'),
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
      child: Transform(
        transform: Matrix4.skewY(0.3),
        child: Align(
          alignment: Alignment.center,
          heightFactor: 0.5,
          child: Image.asset('assets/images/1.jpg',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

