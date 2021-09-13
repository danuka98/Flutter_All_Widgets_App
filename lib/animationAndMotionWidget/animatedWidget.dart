import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Animated Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class SpinningContainer extends AnimatedWidget{
  const SpinningContainer({
    Key? key,
    required AnimationController controller,
}) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {

    return Transform.rotate(
      angle: _progress.value * 2 * math.pi,
      child: Container(width: 800, height: 700, color: Colors.pink[600],),
    );
  }

}


class WidgetLists extends StatefulWidget{
  @override
  State<WidgetLists> createState() => _WidgetListsState();
}

class _WidgetListsState extends State<WidgetLists> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();

  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: SpinningContainer(controller: _controller));
  }

}

