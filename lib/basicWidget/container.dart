import 'package:flutter/material.dart';

class ContainerWidgetDetails extends StatelessWidget {
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
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.all(10),
            color: Colors.orange[600],
            width: 150,
            height: 150,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                TextSpan(text: 'Key? key,\nAlignmentGeometry? alignment,\nEdgeInsetsGeometry? padding,\nColor? color,\nDecoration? decoration,\nDecoration? foregroundDecoration,\ndouble? width,\ndouble? height,\nBoxConstraints? constraints,\nEdgeInsetsGeometry? margin,\nMatrix4? transform,\nAlignmentGeometry? transformAlignment,\nWidget? child,\nClip clipBehavior',style: TextStyle(fontSize: 16,),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

