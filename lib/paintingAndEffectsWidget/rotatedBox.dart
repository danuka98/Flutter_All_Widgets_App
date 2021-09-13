import 'dart:ui';

import 'package:flutter/material.dart';

class RotatedBoxWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('RotatedBox Widget'),
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
      child: RotatedBox(
        quarterTurns: 3,
        child: Align(
          alignment: Alignment.center,
          child: Image.network('https://res.cloudinary.com/dx7npz85q/image/upload/v1629797369/samples/animals/three-dogs.jpg',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

