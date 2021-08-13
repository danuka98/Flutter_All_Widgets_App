import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


class AnimatedWidgetBaseStateWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Widget List'),
      ),
      body: WidgetLists(
        duration:Duration(seconds: 2),
        boxSize: 2,
      ),
    );
  }
}

// class WidgetLists extends StatefulWidget{
//   @override
//   State<WidgetLists> createState() => _WidgetListsState();
// }

class WidgetLists extends ImplicitlyAnimatedWidget{
  const WidgetLists({
    Key? key,
    required this.boxSize,
    required Duration duration,
}) : super(key: key, duration: duration);

  final double boxSize;

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() => _WidgetListsState();
}

class _WidgetListsState extends AnimatedWidgetBaseState<WidgetLists> {
  late Tween _boxSize;


  @override
  void forEachTween(visitor) {
    _boxSize = visitor(_boxSize, widget.boxSize, (dynamic value) => Tween<double>(begin: value))!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(
        size: _boxSize.evaluate(animation),
      ),
    );
  }
}

