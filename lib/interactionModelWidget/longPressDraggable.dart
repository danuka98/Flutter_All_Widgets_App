import 'package:flutter/material.dart';

class LongPressDraggableWidgetDetails extends StatelessWidget {
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
        textAlign: TextAlign.left,
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: '{Key? key,\nrequired Widget child,\nrequired Widget feedback,\nT? data,\nAxis? axis,\nWidget? childWhenDragging,\nOffset feedbackOffset = Offset.zero,\nDragAnchorStrategy? dragAnchorStrategy,\nint? maxSimultaneousDrags,\nVoidCallback? onDragStarted,\nDragUpdateCallback? onDragUpdate,\nDraggableCanceledCallback? onDraggableCanceled,\nDragEndCallback? onDragEnd,\nVoidCallback? onDragCompleted,\nbool hapticFeedbackOnStart,\nbool ignoringFeedbackSemantics = true,\nDuration delay,\n@Deprecated(Use dragAnchorStrategy instead. Replace "dragAnchor: DragAnchor.child" with "dragAnchorStrategy: childDragAnchorStrategy". ' 'Replace "dragAnchor: DragAnchor.pointer" with "dragAnchorStrategy: pointerDragAnchorStrategy". ' 'This feature was deprecated after v2.1.0-10.0.pre.) DragAnchor dragAnchor = DragAnchor.child,}',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

