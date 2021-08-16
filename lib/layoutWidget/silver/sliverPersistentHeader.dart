import 'package:flutter/material.dart';

class SliverPersistentHeaderWidgetDetails extends StatelessWidget {
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
          text: "A sliver whose size varies when the sliver is scrolled to the edge of the viewport opposite the sliver's GrowthDirection.\n\nIn the normal case of a CustomScrollView with no centered sliver, this sliver will vary its size when scrolled to the leading edge of the viewport.\n\nThis is the layout primitive that SliverAppBar uses for its shrinking/growing effect.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nrequired SliverPersistentHeaderDelegate delegate,\nbool pinned,\nbool floating',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

