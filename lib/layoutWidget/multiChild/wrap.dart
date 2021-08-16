import 'package:flutter/material.dart';

class WrapWidgetDetails extends StatelessWidget {
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
      child: Wrap(
        spacing: 6.0, // gap between adjacent chips
        runSpacing: 3.0, // gap between lines
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('W1')),
            label: const Text('Wrap 1'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('W2')),
            label: const Text('Wrap 2'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('W3')),
            label: const Text('Wrap 3'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('W4')),
            label: const Text('Wrap 4'),
          ),
        ],
      ),
    );
  }
}

