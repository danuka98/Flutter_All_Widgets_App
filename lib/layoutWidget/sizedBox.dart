import 'package:flutter/material.dart';

class SizedBoxWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('SizedBox Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Center(
      child: SizedBox(
          width: 200,
          height: 300,
          child: Card(child: Text('Sized Box',style: TextStyle(fontSize: 20),),),
      ),
    );
  }
}

