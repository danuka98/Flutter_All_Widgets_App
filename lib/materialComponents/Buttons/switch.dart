import 'package:flutter/material.dart';

class SwitchWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Switch Widget'),
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
          text: "The switch itself does not maintain any state. Instead, when the state of the switch changes, the widget calls the onChanged callback. Most widgets that use a switch will listen for the onChanged callback and rebuild the switch with a new value to update the visual appearance of the switch.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nrequired bool value,\nrequired ValueChanged<bool>? onChanged,\nColor? activeColor,\nColor? activeTrackColor,\nColor? inactiveThumbColor,\nColor? inactiveTrackColor,\nImageProvider<Object>? activeThumbImage,\nImageErrorListener? onActiveThumbImageError,\nImageProvider<Object>? inactiveThumbImage,\nImageErrorListener? onInactiveThumbImageError,\nMaterialStateProperty<Color?>? thumbColor,\nMaterialStateProperty<Color?>? trackColor,\nMaterialTapTargetSize? materialTapTargetSize,\nDragStartBehavior dragStartBehavior,\nMouseCursor? mouseCursor,\nColor? focusColor,\nColor? hoverColor,\nMaterialStateProperty<Color?>? overlayColor,\ndouble? splashRadius,\nFocusNode? focusNode,\nbool autofocus',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

