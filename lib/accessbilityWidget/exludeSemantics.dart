import 'package:flutter/material.dart';

class ExcludeSemanticsWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Exclude Semantics'),
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
      child: Column(
        children: <Widget>[
          Text(
            'If there are some widgets that are used as decoration only and not meaningful to users, you may want to exclude the widgets from the semantics tree. To do so, you can use ExcludeSemantics widget. The ExcludeSemantics is a widget that drops all the semantics of its descendants.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          Image(
            image: AssetImage('assets/images/ExcludeSemantics.png'),
          ),
          Text(
            'To exclude a subtree from the semantics tree, you can set it as the child of the ExcludeSemantics widget. The constructor also has a named argument excluding which allows you to dynamically include or exclude a subtree from the semantics tree',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

