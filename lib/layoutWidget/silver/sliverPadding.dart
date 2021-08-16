import 'package:flutter/material.dart';

class SliverPaddingWidgetDetails extends StatelessWidget {
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
          text: "A sliver that applies padding on each side of another sliver.\nSlivers are special-purpose widgets that can be combined using a CustomScrollView to create custom scroll effects. A SliverPadding is a basic sliver that insets another sliver by applying padding on each side.\nApplying padding in the main extent of the viewport to slivers that have scroll effects is likely to have undesired effects. For example, For example, wrapping a SliverPersistentHeader with pinned:true will cause only the appbar to stay pinned while the padding will scroll away.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nrequired EdgeInsetsGeometry padding,\nWidget? sliver',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

