import 'package:flutter/material.dart';

class CupertinoSliverNavigationBarWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('CupertinoSliverNavigationBar Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text: "An iOS-styled navigation bar with iOS-11-style large titles using slivers.\n\nThe CupertinoSliverNavigationBar must be placed in a sliver group such as the CustomScrollView.\n\nThis navigation bar consists of two sections, a pinned static section on top and a sliding section containing iOS-11-style large title below it.\n\nIt should be placed at top of the screen and automatically accounts for the iOS status bar.\n\nMinimally, a largeTitle widget will appear in the middle of the app bar when the sliver is collapsed and transfer to the area below in larger font when the sliver is expanded.\n\nFor advanced uses, an optional middle widget can be supplied to show a different widget in the middle of the navigation bar when the sliver is collapsed.\n\nLike CupertinoNavigationBar, it also supports a leading and trailing widget on the static section on top that remains while scrolling.\n\n",
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextSpan(text: 'Key? key,\nWidget? largeTitle,\nWidget? leading,\nbool automaticallyImplyLeading,\nbool automaticallyImplyTitle,\nString? previousPageTitle,\nWidget? middle,\nWidget? trailing,\nBorder? border,\nColor? backgroundColor,\nBrightness? brightness,\nEdgeInsetsDirectional? padding,\nbool transitionBetweenRoutes,\nObject heroTag,\nbool stretch',style: TextStyle(fontSize: 16,),),
            ],
          ),
        ),
      ),
    );
  }
}

