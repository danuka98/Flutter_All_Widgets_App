import 'package:flutter/material.dart';

class TabPageSelectorWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('TabPageSelector Widget'),
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
          text: "Displays a row of small circular indicators, one per tab.\n\nThe selected tab's indicator is highlighted. Often used in conjunction with a TabBarView.\n\nIf a TabController is not provided, then there must be a DefaultTabController ancestor.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nTabController? controller,\ndouble indicatorSize,\nColor? color,\nColor? selectedColor',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

