import 'package:flutter/material.dart';

class CustomMultiChildLayoutWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Widget List'),
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
          text: "A widget that uses a delegate to size and position multiple children.\n\nThe delegate can determine the layout constraints for each child and can decide where to position each child. The delegate can also determine the size of the parent, but the size of the parent cannot depend on the sizes of the children.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'Key? key,\nrequired MultiChildLayoutDelegate delegate,\nList<Widget> children = const <Widget>[]',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

