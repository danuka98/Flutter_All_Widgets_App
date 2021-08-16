import 'package:flutter/material.dart';

class DraggableWidgetDetails extends StatelessWidget {
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
    return Center(
      child: Draggable(
        data: 'Flutter',
        child: FlutterLogo(
          size: 100,
        ),
        feedback: FlutterLogo(
          size: 100,
        ),
        childWhenDragging: Container(),
      ),
    );
  }

}

