import 'package:flutter/material.dart';

class OutlinedButtonWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('OutlinedButton Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: OutlinedButton(
        onPressed: () {
          print('Received click');
        },
        child: const Text('Click Me'),
      ),
    );
  }
}

