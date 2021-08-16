import 'package:flutter/material.dart';

class IgnorePointerWidgetDetails extends StatelessWidget {
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

class WidgetLists extends StatefulWidget{
  @override
  State<WidgetLists> createState() => _WidgetLists();
}

class _WidgetLists extends State<WidgetLists>{
  bool ignoring = false;

  void setIgnoring(bool newValue){
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(120),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              setIgnoring(!ignoring);
            },
            child: Text(ignoring? 'Set ignoring to false': 'Set ignoring to true'),
          ),
          IgnorePointer(
            ignoring: ignoring,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Ignoring: $ignoring'),
                ElevatedButton(onPressed: () {}, child: const Text('Click me!'))
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

