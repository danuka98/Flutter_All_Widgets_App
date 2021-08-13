import 'package:flutter/material.dart';

class MergeSemanticsWidgetDetails extends StatelessWidget {
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

    return MergeSemantics(
      child: Container(
        child: Row(
          children: <Widget>[
            Checkbox(value: true, onChanged: (bool? value){},
            ),
            const Text('Setting'),
          ],
        ),
      ),
    );
  }
}

