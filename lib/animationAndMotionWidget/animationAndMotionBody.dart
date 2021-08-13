import 'package:flutter/material.dart';
import 'package:task1/animationAndMotionWidget/animatedAlign.dart';
import 'package:task1/animationAndMotionWidget/animatedBuilder.dart';
import 'package:task1/animationAndMotionWidget/animatedContainer.dart';
import 'package:task1/animationAndMotionWidget/animatedCross.dart';
import 'package:task1/animationAndMotionWidget/animatedDefaultTextStyle.dart';
import 'package:task1/animationAndMotionWidget/animatedListState.dart';
import 'package:task1/animationAndMotionWidget/animatedModelBarrier.dart';
import 'package:task1/animationAndMotionWidget/animatedOpacity.dart';
import 'package:task1/animationAndMotionWidget/animatedPhysical.dart';
import 'package:task1/animationAndMotionWidget/animatedPosition.dart';
import 'package:task1/animationAndMotionWidget/animatedSize.dart';
import 'package:task1/animationAndMotionWidget/animatedWidget.dart';
import 'package:task1/animationAndMotionWidget/animatedWidgetBaseState.dart';
import 'package:task1/animationAndMotionWidget/decoratedBoxTransition.dart';
import 'package:task1/animationAndMotionWidget/fadeTransition.dart';
import 'package:task1/animationAndMotionWidget/hero.dart';
import 'package:task1/animationAndMotionWidget/positionedTransition.dart';
import 'package:task1/animationAndMotionWidget/rotationTransition.dart';
import 'package:task1/animationAndMotionWidget/scaleTransition.dart';
import 'package:task1/animationAndMotionWidget/sizeTransition.dart';
import 'package:task1/animationAndMotionWidget/slideTransition.dart';

class AnimationWidgetList extends StatelessWidget {
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

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        AnimatedAlignWidget(context),
        AnimatedBuilderWidget(context),
        AnimatedContainerWidget(context),
        AnimatedCrossWidget(context),
        AnimatedDefaultTextStyleWidget(context),
        AnimatedListStateWidget(context),
        AnimatedModalBarrierWidget(context),
        AnimatedOpacityWidget(context),
        AnimatedPhysicalModelWidget(context),
        AnimatedPositionedWidget(context),
        AnimatedSizeWidget(context),
        AnimatedWidgetWidget(context),
        AnimatedWidgetBaseStateWidget(context),
        DecoratedBoxTransitionWidget(context),
        FadeTransitionWidget(context),
        HeroWidget(context),
        PositionedTransitionWidget(context),
        RotationTransitionWidget(context),
        ScaleTransitionWidget(context),
        SizeTransitionWidget(context),
        SlideTransitionWidget(context),
      ],
    );
  }

  Widget AnimatedAlignWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Align Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 125),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedAlignWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedBuilderWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Builder Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 110),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedBuilderWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedContainerWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Container Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 90),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedContainerWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedCrossWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Cross Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 120),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedCrossWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedDefaultTextStyleWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Default TextStyle Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedDefaultTextStyleWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedListStateWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated ListState Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 95),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => AnimatedListStateWidgetDetails())
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedModalBarrierWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated ModalBarrier Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 62),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedModelBarrierWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedOpacityWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Opacity Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 105),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedOpacityWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedPhysicalModelWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated PhysicalModel Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 50),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedPhysicalWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedPositionedWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Positioned Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 82),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedPositionedWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedSizeWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Size Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedSizeWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedWidgetWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 175),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnimatedWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AnimatedWidgetBaseStateWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Animated WidgetBaseState Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 32),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => AnimatedWidgetBaseStateWidgetDetails())
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget DecoratedBoxTransitionWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'DecoratedBox Transition Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 55),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DecoratedBoxTransitionWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget FadeTransitionWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Fade Transition Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 130),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FadeTransitionWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget HeroWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Hero Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 215),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HeroWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget PositionedTransitionWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Positioned Transition Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 80),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PositionedTransitionWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget RotationTransitionWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Rotation Transition Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RotationTransitionWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ScaleTransitionWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Scale Transition Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 122),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScaleTransitionWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SizeTransitionWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Size Transition Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 130),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SizeTransitionWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SlideTransitionWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.pink[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Slide Transition Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 125),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SlideTransitionWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

}