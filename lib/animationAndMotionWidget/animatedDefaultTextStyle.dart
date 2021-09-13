import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Animated Default TextStyle Widget'),
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
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: selected ? Colors.pink[600] : Colors.blue,
          ),
          duration: Duration(seconds: 3),
          child: Text('Animated Default TextStyle'),
        ),
      ),
    );
  }

}

