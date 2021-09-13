import 'package:flutter/material.dart';

class MaterialAppWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('MaterialApp Widget'),
        ),
        body: WidgetLists(),
      ),
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
          text: "An application that uses material design.\n\nA convenience widget that wraps a number of widgets that are commonly required for material design applications. It builds upon a WidgetsApp by adding material-design specific functionality, such as AnimatedTheme and GridPaper.",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            // TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            // TextSpan(text: 'Key? key,\nWidget? child',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

