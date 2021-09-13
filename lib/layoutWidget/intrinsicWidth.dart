import 'package:flutter/material.dart';

class IntrinsicWidthWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('IntrinsicWidth Widget'),
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
          text: "A widget that sizes its child to the child's maximum intrinsic width.\n\nThis class is useful, for example, when unlimited width is available and you would like a child that would otherwise attempt to expand infinitely to instead size itself to a more reasonable width.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nWidget? child,\ndouble? stepWidth,\ndouble? stepHeight,',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

