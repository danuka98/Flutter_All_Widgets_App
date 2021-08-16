import 'package:flutter/material.dart';

class GestureDetectorWidgetDetails extends StatelessWidget {
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
  bool _lights = false;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        width: 200,
        height: 200,
        alignment: FractionalOffset.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lights ? Colors.yellow.shade600 : Colors.black,
                size: 80,
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    _lights = true;
                  });
                },
                child: Container(
                  color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(10),
                  child: const Text('TURN LIGHTS ON'),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    _lights = false;
                  });
                },
                child: Container(
                  width: 130,
                  color: Colors.black,
                  padding: const EdgeInsets.all(10),
                  child: const Text('TURN LIGHTS OFF',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

