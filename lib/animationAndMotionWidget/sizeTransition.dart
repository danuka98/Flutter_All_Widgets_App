import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeTransitionWidgetDetails extends StatelessWidget {
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
  State<WidgetLists> createState() => _WidgetListsState();
}

class _WidgetListsState extends State<WidgetLists> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn
  );

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizeTransition(
          sizeFactor: _animation,
          axis: Axis.vertical,
          axisAlignment: -1,
          child: const Center(child: FlutterLogo(size: 200,),),
        ),
      ),
    );
  }
}

