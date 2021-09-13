import 'package:flutter/material.dart';

class PopupMenuButtonWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('PopupMenuButton Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatefulWidget{
  @override
  State<WidgetLists> createState() => _WidgetLists();
}

class _WidgetLists extends State<WidgetLists>{

  @override
  Widget build(BuildContext context) {

    return Center(
      child: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("First"),
              value: 1,
            ),
            PopupMenuItem(
              child: Text("Second"),
              value: 2,
            )
          ]
      ),
    );
  }

}

