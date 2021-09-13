import 'package:flutter/material.dart';
import 'package:task1/accessbilityWidget/exludeSemantics.dart';
import 'package:task1/accessbilityWidget/mergeSemantics.dart';
import 'package:task1/accessbilityWidget/semantics.dart';
import 'package:task1/constants.dart';

class AccessibilityWidgetList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Accessibility Widgets'),
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
        ExcludeSemanticsWidget(context),
        MergeSemanticsWidget(context),
        SemanticsWidget(context)
      ],
    );
  }

  Widget ExcludeSemanticsWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ExcludeSemanticsWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Blue800,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Exclude Semantics Widget',
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

  Widget MergeSemanticsWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MergeSemanticsWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Blue800,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Merge Semantics Widget',
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

  Widget SemanticsWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SemanticsWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Blue800,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Semantics Widget',
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