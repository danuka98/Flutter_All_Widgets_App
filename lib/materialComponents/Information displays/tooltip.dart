import 'package:flutter/material.dart';

class ToolTipWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Tooltip Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Tooltip(
        message: 'I am a Tooltip',
        child: const Text('Tap this text and hold down to show a tooltip.'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient:
          const LinearGradient(colors: <Color>[Colors.amber, Colors.red]),
        ),
        height: 50,
        padding: const EdgeInsets.all(8.0),
        preferBelow: false,
        textStyle: const TextStyle(
          fontSize: 24,
        ),
        showDuration: const Duration(seconds: 2),
        waitDuration: const Duration(seconds: 1),
      ),
    );
  }
}

