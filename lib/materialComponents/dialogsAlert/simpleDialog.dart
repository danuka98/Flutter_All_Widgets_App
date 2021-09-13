import 'package:flutter/material.dart';

class SimpleDialogWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('SimpleDialog Widget'),
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
          text: "A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices.\nChoices are normally represented using SimpleDialogOption widgets. If other widgets are used, see contentPadding for notes regarding the conventions for obtaining the spacing expected by Material Design.\nFor dialogs that inform the user about a situation, consider using an AlertDialog.\nTypically passed as the child widget to showDialog, which displays the dialog.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nWidget? title,\nEdgeInsetsGeometry titlePadding,\nTextStyle? titleTextStyle,\nList<Widget>? children,\nEdgeInsetsGeometry contentPadding,\nColor? backgroundColor,\ndouble? elevation,\nString? semanticLabel,\nEdgeInsets insetPadding,\nClip clipBehavior,\nShapeBorder? shape',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

