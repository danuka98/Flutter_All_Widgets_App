import 'package:flutter/material.dart';

class OverflowBoxWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('OverflowBox Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          text: "A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nAlignmentGeometry alignment,\ndouble? minWidth,\ndouble? maxWidth,\ndouble? minHeight,\ndouble? maxHeight,\nWidget? child',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

