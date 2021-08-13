import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideTransitionWidgetDetails extends StatelessWidget {
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
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
    end: const Offset(2, 0),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn,));

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideTransition(
        position: _offsetAnimation,
        child: const Padding(padding: EdgeInsets.all(8),child: FlutterLogo(size: 200,),),
      ),
    );
  }

}

