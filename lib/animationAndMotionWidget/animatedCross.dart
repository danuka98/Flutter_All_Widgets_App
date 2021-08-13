import 'package:flutter/material.dart';

class AnimatedCrossWidgetDetails extends StatelessWidget {
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
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 250,),
          secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 250,),
          crossFadeState: selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
    );
  }

}

