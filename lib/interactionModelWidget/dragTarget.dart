import 'package:flutter/material.dart';

class DragTargetWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('DragTarget Widget'),
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
        textAlign: TextAlign.left,
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
            TextSpan(text: 'Key? key,\nrequired DragTargetBuilder<T> builder,\nDragTargetWillAccept<T>? onWillAccept,\nDragTargetAccept<T>? onAccept,\nDragTargetLeave<T>? onLeave,\nDragTargetMove<T>? onMove,\nHitTestBehavior hitTestBehavior,\nDragTargetAcceptWithDetails<T>? onAcceptWithDetails',style: TextStyle(fontSize: 20,),),
          ],
        ),
      ),
    );
  }
}

