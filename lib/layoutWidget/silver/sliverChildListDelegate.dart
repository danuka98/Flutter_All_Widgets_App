import 'package:flutter/material.dart';

class SliverChildListDelegateWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('SliverChildListDelegate Widget'),
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
          text: "A delegate that supplies children for slivers using an explicit list.\n\nMany slivers lazily construct their box children to avoid creating more children than are visible through the Viewport. This delegate provides children using an explicit list, which is convenient but reduces the benefit of building children lazily.\n\nThe widgets in the given children list are automatically wrapped in AutomaticKeepAlive widgets if addAutomaticKeepAlives is true (the default) and in RepaintBoundary widgets if addRepaintBoundaries is true (also the default).\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'SliverChildListDelegate Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'List<Widget> children,\nbool addAutomaticKeepAlives,\nbool addRepaintBoundaries,\nbool addSemanticIndexes,\nSemanticIndexCallback semanticIndexCallback,\nint semanticIndexOffset\n\n',style: TextStyle(fontSize: 16,),),
            TextSpan(text: 'SliverChildListDelegate.fixed Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'List<Widget> children,\nbool addAutomaticKeepAlives,\nbool addRepaintBoundaries,\nbool addSemanticIndexes,\nSemanticIndexCallback semanticIndexCallback,\nint semanticIndexOffset',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

