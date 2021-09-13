import 'dart:ui';

import 'package:flutter/material.dart';

class ClipPathWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('ClipPath Widget'),
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
      child: ClipPath(
        child: SizedBox(
          width: 320,
          height: 240,
          child: Image.asset('assets/images/1.jpg',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

