import 'package:flutter/material.dart';

class BaseLineWidgetDetails extends StatelessWidget {
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
          text: "This widget shifts the child down such that the child's baseline (or the bottom of the child, if the child has no baseline) is baseline logical pixels below the top of this box, then sizes this box to contain the child. If baseline is less than the distance from the top of the child to the baseline of the child, then the child is top-aligned instead.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nrequired double baseline,\nrequired TextBaseline baselineType,\nWidget? child',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

