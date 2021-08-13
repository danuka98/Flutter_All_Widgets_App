import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderWidgetDetails extends StatelessWidget {
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

class _WidgetLists extends State<WidgetLists> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.pink[600],
          child: const Center(
            child: Text('Animated Builder'),
          ),
        ),
        builder: (BuildContext context, Widget? child){
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: child,
          );
        },
      ),
    );
  }

}

