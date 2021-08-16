import 'package:flutter/material.dart';

class ScrollableWidgetDetails extends StatelessWidget {
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
                  text: 'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed.\n\n',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    TextSpan(text: 'Key? key,\nAxisDirection axisDirection,\nScrollController? controller,\nScrollPhysics? physics,\nrequired ViewportBuilder viewportBuilder,\nScrollIncrementCalculator? incrementCalculator,\nbool excludeFromSemantics,\nint? semanticChildCount,\nDragStartBehavior dragStartBehavior,\nString? restorationId,\nScrollBehavior? scrollBehavior',style: TextStyle(fontSize: 16,),),
                  ],
                ),
      ),
    );
  }
}

