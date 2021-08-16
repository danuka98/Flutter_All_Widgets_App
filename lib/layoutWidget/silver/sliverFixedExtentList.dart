import 'package:flutter/material.dart';

class SliverFixedExtentListWidgetDetails extends StatelessWidget {
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
          text: "A sliver that places multiple box children with the same main axis extent in a linear array.\n\nSliverFixedExtentList places its children in a linear array along the main axis starting at offset zero and without gaps. Each child is forced to have the itemExtent in the main axis and the SliverConstraints.crossAxisExtent in the cross axis.\n\nSliverFixedExtentList is more efficient than SliverList because SliverFixedExtentList does not need to perform layout on its children to obtain their extent in the main axis.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nrequired SliverChildDelegate delegate,\nrequired double itemExtent',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

