import 'dart:ui';

import 'package:flutter/material.dart';

class ClipRectWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('ClipRect Widget'),
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
      child: ClipRect(
        child: Align(
          alignment: Alignment.center,
          heightFactor: 0.5,
          child: Image.network('https://res.cloudinary.com/dx7npz85q/image/upload/v1629797369/samples/animals/three-dogs.jpg',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

