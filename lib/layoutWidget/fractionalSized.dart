import 'package:flutter/material.dart';

class FractionalSizedWidgetDetails extends StatelessWidget {
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

    return Container(
      alignment: Alignment.center,
      child: Flexible(
        child: FractionallySizedBox(
          widthFactor: 0.3,
          heightFactor: 0.09,
          child: ElevatedButton(
            onPressed: () {  },
            child: Text('PRESS HERE'),
          )
          ),
        ),
    );
  }
}

