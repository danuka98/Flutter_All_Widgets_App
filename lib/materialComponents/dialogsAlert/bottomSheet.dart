import 'package:flutter/material.dart';

class BottomSheetWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('BottomSheet Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          text: "There are two kinds of bottom sheets in material design:\n\n* Persistent. A persistent bottom sheet shows information that supplements the primary content of the app. A persistent bottom sheet remains visible even when the user interacts with other parts of the app. Persistent bottom sheets can be created and displayed with the ScaffoldState.showBottomSheet function or by specifying the Scaffold.bottomSheet constructor parameter.\n\n* Modal. A modal bottom sheet is an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app. Modal bottom sheets can be created and displayed with the showModalBottomSheet function\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nAnimationController? animationController,\nbool enableDrag,\nBottomSheetDragStartHandler? onDragStart,\nBottomSheetDragEndHandler? onDragEnd,\nColor? backgroundColor,\ndouble? elevation,\nShapeBorder? shape,\nClip? clipBehavior,\nrequired VoidCallback onClosing,\nrequired WidgetBuilder builder',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

