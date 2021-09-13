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
import 'package:task1/constants.dart';

class AnimationWidgetList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Animation And Motion Widgets'),
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
        //AnimatedListStateWidget(context),
        AnimatedModalBarrierWidget(context),
        AnimatedOpacityWidget(context),
        AnimatedPhysicalModelWidget(context),
        AnimatedPositionedWidget(context),
        AnimatedSizeWidget(context),
        AnimatedWidgetWidget(context),
        //AnimatedWidgetBaseStateWidget(context),
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

  Widget AnimatedAlignWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedAlignWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedBuilderWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedBuilderWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedContainerWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedContainerWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedCrossWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedCrossWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedDefaultTextStyleWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedDefaultTextStyleWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedListStateWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Pink600,
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
                  color: Constants.White,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: mediaQueryData.size.width*0.275),
                // child: IconButton(
                //   icon: const Icon(Icons.arrow_forward_ios),
                //   color: Constants.White,
                //   onPressed: () {
                //     // Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => AnimatedListStateWidgetDetails())
                //     // );
                //   },
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget AnimatedModalBarrierWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedModelBarrierWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedOpacityWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedOpacityWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedPhysicalModelWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedPhysicalWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedPositionedWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedPositionedWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedSizeWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedSizeWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget AnimatedWidgetWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  // Widget AnimatedWidgetBaseStateWidget(BuildContext context) {
  //   MediaQueryData mediaQueryData = MediaQuery.of(context);
  //   return Container(
  //     height: mediaQueryData.size.height*0.1,
  //     child: Card(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //       color: Constants.Pink600,
  //       child: Padding(
  //         padding: EdgeInsets.all(13),
  //         child: Row(
  //           children: [
  //             Text(
  //               'Animated WidgetBaseState Widget',
  //               textAlign: TextAlign.left,
  //               style: TextStyle(
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.bold,
  //                 color: Constants.White,
  //               ),
  //             ),
  //             Container(
  //               margin: EdgeInsets.only(left: mediaQueryData.size.width*0.11),
  //               // child: IconButton(
  //               //   icon: const Icon(Icons.arrow_forward_ios),
  //               //   color: Constants.White,
  //               //   onPressed: () {
  //               //     // Navigator.push(
  //               //     //     context,
  //               //     //     MaterialPageRoute(
  //               //     //         builder: (context) => AnimatedWidgetBaseStateWidgetDetails())
  //               //     // );
  //               //   },
  //               // ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }


  Widget DecoratedBoxTransitionWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DecoratedBoxTransitionWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget FadeTransitionWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FadeTransitionWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget HeroWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HeroWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget PositionedTransitionWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PositionedTransitionWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget RotationTransitionWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => RotationTransitionWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget ScaleTransitionWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ScaleTransitionWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget SizeTransitionWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SizeTransitionWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget SlideTransitionWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SlideTransitionWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Pink600,
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
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}