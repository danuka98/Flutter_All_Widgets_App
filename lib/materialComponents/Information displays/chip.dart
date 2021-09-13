import 'package:flutter/material.dart';

class ChipWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Chip Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: const Text('AB'),
        ),
        label: const Text('Aaron Burr'),
      ),
    );
  }
}

