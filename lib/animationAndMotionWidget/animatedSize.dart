import 'package:flutter/material.dart';

class AnimatedSizeWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Animated Size Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatefulWidget{
  @override
  State<WidgetLists> createState() => _WidgetListsState();
}

class _WidgetListsState extends State<WidgetLists> with TickerProviderStateMixin{
  bool _selected = false;
  double _size = 50;
  
  void _updateSize(){
    setState(() {
      _size = _selected ? 250 : 100;
      _selected = !_selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _updateSize(),
        child: Container(
          color: Colors.amberAccent,
          child: AnimatedSize(
            curve: Curves.easeIn,
            vsync: this,
            duration: const Duration(seconds: 2),
            child: FlutterLogo(size: _size),
          ),
        ),
      ),
    );
  }

}

