import 'package:flutter/material.dart';

class ListBodyWidgetDetails extends StatelessWidget {
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
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          text: "A widget that arranges its children sequentially along a given axis, forcing them to the dimension of the parent in the other axis.\n\nThis widget is rarely used directly. Instead, consider using ListView, which combines a similar layout algorithm with scrolling behavior, or Column, which gives you more flexible control over the layout of a vertical set of boxes.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nAxis mainAxis,\nbool reverse,\nList<Widget> children = const <Widget>[]',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

