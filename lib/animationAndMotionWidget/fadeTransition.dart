import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeTransitionWidgetDetails extends StatelessWidget {
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
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn
  );

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        color: Colors.white,
        child: FadeTransition(
          opacity: _animation,
          child: const Padding(padding: EdgeInsets.all(8), child: FlutterLogo(),),
        ),
      ),
    );
  }

}

