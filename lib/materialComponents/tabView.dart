import 'package:flutter/material.dart';

class TabBarViewWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('TabBarView Widget'),
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
          text: "If a TabController is not provided, then there must be a DefaultTabController ancestor.\n\nThe tab controller's TabController.length must equal the length of the children list and the length of the TabBar.tabs list.\n\To see a sample implementation, visit the TabController documentation.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nrequired List<Widget> children,\nTabController? controller,\nScrollPhysics? physics,\nDragStartBehavior dragStartBehavior',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

