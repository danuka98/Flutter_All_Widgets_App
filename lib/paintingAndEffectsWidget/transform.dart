import 'dart:ui';

import 'package:flutter/material.dart';

class TransformWidgetDetails extends StatelessWidget {
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
      child: Transform(
        transform: Matrix4.skewY(0.3),
        child: Align(
          alignment: Alignment.center,
          heightFactor: 0.5,
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

