import 'dart:ui';

import 'package:flutter/material.dart';

class OpacityWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Opacity Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Opacity(
        opacity: 0.4,
        child: Image.network('https://res.cloudinary.com/dx7npz85q/image/upload/v1629797369/samples/animals/three-dogs.jpg',),
      ),
    );
  }
}

