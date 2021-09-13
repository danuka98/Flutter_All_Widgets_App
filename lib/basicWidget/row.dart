import 'package:flutter/material.dart';

class RowWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Row Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(child: Text('Row Widget', textAlign: TextAlign.center,),),
        Expanded(child: Text('Another Row Widget', textAlign: TextAlign.center,),),
        Expanded(child: FittedBox(fit: BoxFit.contain,child: FlutterLogo(),),),
      ],
    );

  }
}

