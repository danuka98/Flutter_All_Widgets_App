import 'package:flutter/material.dart';
import 'package:task1/accessbilityWidget/exludeSemantics.dart';
import 'package:task1/accessbilityWidget/mergeSemantics.dart';
import 'package:task1/accessbilityWidget/semantics.dart';

class AccessibilityWidgetList extends StatelessWidget {
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
        ExcludeSemanticsWidget(context),
        MergeSemanticsWidget(context),
        SemanticsWidget(context)
      ],
    );
  }

  Widget ExcludeSemanticsWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.blue[800],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Exclude Semantics Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExcludeSemanticsWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget MergeSemanticsWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.blue[800],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Merge Semantics Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 110),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MergeSemanticsWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SemanticsWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.blue[800],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Semantics Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 165),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SemanticsWidgetDetails()),
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