import 'package:flutter/material.dart';
import 'package:task1/InputWidget/form.dart';
import 'package:task1/InputWidget/rawKeyboardListner.dart';

class InputWidgetList extends StatelessWidget {
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

class WidgetLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AutocompleteWidget(context),
        FormWidget(context),
        FormFieldWidget(context),
        RawKeyboardListenerWidget(context),
      ],
    );
  }

  Widget AutocompleteWidget(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.lime[800],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Auto complete Widget',
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget FormWidget(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.lime[800],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Form Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 210),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormWidgetDetails()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget FormFieldWidget(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.lime[800],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Form Field Widget',
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
                        MaterialPageRoute(
                            builder: (context) => FormWidgetDetails()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget RawKeyboardListenerWidget(BuildContext context) => Container(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.lime[800],
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'RawKeyboardListener Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 75),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RawKeyboardListnerWidgetDetails()),
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
