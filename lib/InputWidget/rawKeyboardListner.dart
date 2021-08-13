import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawKeyboardListnerWidgetDetails extends StatelessWidget {
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

class WidgetLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
          Text(
            'Enter Key Pressed',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          );
        }
      },
      child: Container(),
    );
  }
}
