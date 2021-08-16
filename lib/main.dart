import 'package:flutter/material.dart';
import 'package:task1/InputWidget/inputWidgetBody.dart';
import 'package:task1/StylingWidget/stylingbody.dart';
import 'package:task1/accessbilityWidget/accessibilityWidgetsBody.dart';
import 'package:task1/animationAndMotionWidget/animationAndMotionBody.dart';
import 'package:task1/assetsImagesIconsWidget/assertsImagesIconsBody.dart';
import 'package:task1/asyncWidget/asyncBody.dart';
import 'package:task1/basicWidget/basicBody.dart';
import 'package:task1/interactionModelWidget/interactionModelBody.dart';
import 'package:task1/layoutWidget/layoutWidgetBody.dart';
import 'package:task1/paintingAndEffectsWidget/paintingAndEffectsWidgetsBody.dart';
import 'package:task1/textWidget/textWidgetBody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Catalog'),
          centerTitle: true,
        ),
        body: getListView(),
      ),
    );
  }
}

class getListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        accessibilityWidgets(context),
        AnimationAndMotionWidgets(context),
        AssetsImagesAndIconsWidgets(context),
        AsyncWidgets(context),
        BasicsWidgets(context),
        InputWidgets(context),
        InteractionModelsWidgets(context),
        StylingWidgets(context),
        TextWidgets(context),
        LayoutWidgets(context),
        // MaterialComponentsWidgets(context),
        PaintingAndEffectsWidgets(context),
        // ScrollingWidgets(context),
      ],
    );
  }


  Widget accessibilityWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.blue[800],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Accessibility Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 150),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccessibilityWidgetList())
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget AnimationAndMotionWidgets(BuildContext context) => Container(
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
                  'Animation And Motion Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 73),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimationWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget AssetsImagesAndIconsWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.deepOrange[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Assets Images And Icons Widgets',
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
                            builder: (context) =>
                                AssertsImagesIconWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget AsyncWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.red[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Async Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 205),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AsyncWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget BasicsWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.orange[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Basics Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 200),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BasicWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget InputWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.lime[800],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Input Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 212),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InputWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget InteractionModelsWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.deepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Interaction Models Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 102),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InteractionModelWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget LayoutWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.green[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Layout Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 200),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LayoutWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget MaterialComponentsWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.teal[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Material Components Widgets',
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget PaintingAndEffectsWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.cyan[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'PaintingAnd Effects Widgets',
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaintingAndEffectsWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget ScrollingWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.indigo[400],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Scrolling Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 185),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget StylingWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.brown[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Styling Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 200),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StylingWidgetList()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget TextWidgets(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.grey[600],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Text Widgets',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 222),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TextWidgetList()),
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
