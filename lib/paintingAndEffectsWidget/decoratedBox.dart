import 'package:flutter/material.dart';
import 'dart:ui';

class DecoratedBoxWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('DecoratedBox Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  WidgetLists({
   Key? key,
   @required Decoration? decoration,
   DecorationPosition position: DecorationPosition.background,
   Widget? child,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(100),
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(
            color: const Color(0xFF000000),
            style: BorderStyle.solid,
            width: 4.0,
          ),
          borderRadius: BorderRadius.zero,
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color(0x66000000),
              blurRadius: 10.0,
              spreadRadius: 4.0,
            )
          ],
        ),
        child: Container(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}

