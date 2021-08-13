import 'package:flutter/material.dart';
import 'package:task1/asyncWidget/futureBuilder.dart';
import 'package:task1/asyncWidget/streamBuilder.dart';

class AsyncWidgetList extends StatelessWidget {
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

    return ListView(
      children: [
        FutureBuilderWidget(context),
        StreamBuilderWidget(context),
      ],
    );
  }

  Widget FutureBuilderWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.red[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Future Builder Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 135),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FutureBuilderWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget StreamBuilderWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.red[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Stream Builder Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 130),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StreamBuilderWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}