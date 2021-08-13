import 'package:flutter/material.dart';

class DismissibleWidgetDetails extends StatelessWidget {
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

class WidgetLists extends StatefulWidget{
  @override
  State<WidgetLists> createState() => _WidgetLists();
}

class _WidgetLists extends State<WidgetLists>{
  List<int> items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 15),
      itemBuilder: (BuildContext context, int index){
        return Dismissible(
          child: ListTile(
            title: Text('Item ${items[index]}'),
          ),
          background: Container(
            color: Colors.green,
          ),
          key: ValueKey<int>(items[index]),
          onDismissed: (DismissDirection direction){
            setState(() {
              items.removeAt(index);
            });
          },
        );
      },
    );
  }

}

