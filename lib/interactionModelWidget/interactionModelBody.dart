import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/interactionModelWidget/absordWidget.dart';
import 'package:task1/interactionModelWidget/dismissible.dart';
import 'package:task1/interactionModelWidget/dragTarget.dart';
import 'package:task1/interactionModelWidget/draggable.dart';
import 'package:task1/interactionModelWidget/draggableScrollableSheet.dart';
import 'package:task1/interactionModelWidget/gestureDetector.dart';
import 'package:task1/interactionModelWidget/ignorePointer.dart';
import 'package:task1/interactionModelWidget/interactiveViewer.dart';
import 'package:task1/interactionModelWidget/longPressDraggable.dart';
import 'package:task1/interactionModelWidget/scrollable.dart';

class InteractionModelWidgetList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Interaction Models Widgets'),
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
        AbsordWidget(context),
        DismissibleWidget(context),
        DragTargetWidget(context),
        DraggableWidget(context),
        DraggableScrollableSheetWidget(context),
        GestureDetectorWidget(context),
        IgnorePointerWidget(context),
        InteractiveViewerWidget(context),
        LongPressDraggableWidget(context),
        ScrollableWidget(context),
      ],
    );
  }

  Widget AbsordWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AbsorbWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Absord Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DismissibleWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DismissibleWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Dismissible Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DragTargetWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DragTargetWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'DragTarget Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DraggableWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DraggableWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Draggable Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DraggableScrollableSheetWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DraggableScrollableSheetWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'DraggableScrollableSheet Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget GestureDetectorWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GestureDetectorWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'GestureDetector Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget IgnorePointerWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => IgnorePointerWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'IgnorePointer Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget InteractiveViewerWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InteractiveViewerWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'InteractiveViewer Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget LongPressDraggableWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LongPressDraggableWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'LongPressDraggable Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ScrollableWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ScrollableWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepPurpleAccent,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Scrollable Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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