import 'package:flutter/material.dart';

class DraggableScrollableSheetWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('DraggableScrollableSheet Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return SizedBox.expand(
      child: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController){
          return Container(
            color: Colors.deepPurpleAccent,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index){
                return ListTile(title: Text('Item $index', style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),);
              },
            ),
          );
        },
      ),
    );
  }
}

