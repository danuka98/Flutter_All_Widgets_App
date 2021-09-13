import 'dart:math';

import 'package:flutter/material.dart';

class LimitedBoxWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('LimitedBox Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
        child:
              LimitedBox(
                maxHeight: 10,
                maxWidth: 40,
                child: Container(
                  color: Colors.amber,
                )
        ),
    );
  }
}

