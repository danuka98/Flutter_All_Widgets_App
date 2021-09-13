import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/paintingAndEffectsWidget/backdrop.dart';
import 'package:task1/paintingAndEffectsWidget/clipPath.dart';
import 'package:task1/paintingAndEffectsWidget/clipRect.dart';
import 'package:task1/paintingAndEffectsWidget/clipoval.dart';
import 'package:task1/paintingAndEffectsWidget/customPaint.dart';
import 'package:task1/paintingAndEffectsWidget/decoratedBox.dart';
import 'package:task1/paintingAndEffectsWidget/fractionalTranslation.dart';
import 'package:task1/paintingAndEffectsWidget/opacity.dart';
import 'package:task1/paintingAndEffectsWidget/rotatedBox.dart';
import 'package:task1/paintingAndEffectsWidget/transform.dart';

class PaintingAndEffectsWidgetList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('PaintingAnd Effects Widgets'),
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
        BackdropFilterWidget(context),
        ClipOvalWidget(context),
        ClipPathWidget(context),
        ClipRectWidget(context),
        CustomPaintWidget(context),
        DecoratedBoxWidget(context),
        FractionalTranslationWidget(context),
        OpacityWidget(context),
        RotatedBoxWidget(context),
        TransformWidget(context),
      ],
    );
  }

  Widget BackdropFilterWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BackdropWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Backdrop Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Constants.White,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ClipOvalWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ClipOvalWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'ClipOval Widget',
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

  Widget ClipPathWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ClipPathWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'ClipPath Widget',
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

  Widget ClipRectWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ClipRectWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'ClipRect Widget',
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

  Widget CustomPaintWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CustomPaintWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'CustomPaint Widget',
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

  Widget DecoratedBoxWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DecoratedBoxWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'DecoratedBox Widget',
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

  Widget FractionalTranslationWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FractionalTranslationWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Fractional Translations Widget',
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

  Widget OpacityWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OpacityWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Opacity Widget',
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

  Widget RotatedBoxWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RotatedBoxWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'RotatedBox Widget',
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

  Widget TransformWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransformWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Cyan600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Transform Widget',
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