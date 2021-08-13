import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedContainerWidgetDetails extends StatelessWidget {
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
        child: AnimatedContainer(
          width: selected ? 300 : 100,
          height: selected ? 100 : 300,
          color: selected ? Colors.pink[600] : Colors.blue,
          alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 80,),
        ),
      ),
    );
  }

}

