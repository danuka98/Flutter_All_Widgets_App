import 'package:flutter/material.dart';

class SliverToBoxAdapterWidgetDetails extends StatelessWidget {
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
          text: "A sliver that contains a single box widget.\n\nSlivers are special-purpose widgets that can be combined using a CustomScrollView to create custom scroll effects. A SliverToBoxAdapter is a basic sliver that creates a bridge back to one of the usual box-based widgets.\n\nRather than using multiple SliverToBoxAdapter widgets to display multiple box widgets in a CustomScrollView, consider using SliverList, SliverFixedExtentList, SliverPrototypeExtentList, or SliverGrid, which are more efficient because they instantiate only those children that are actually visible through the scroll view's viewport.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nWidget? child',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

