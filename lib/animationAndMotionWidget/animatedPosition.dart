import 'package:flutter/material.dart';

class AnimatedPositionedWidgetDetails extends StatelessWidget {
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
  State<WidgetLists> createState() => _WidgetListState();
}

class _WidgetListState extends State<WidgetLists>{
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              width: selected ? 200 : 50,
              height: selected ? 50 : 200,
              top: selected ? 50 : 150,
              duration: const Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  color: Colors.pink,
                  child: const Center(child: Text('Animated Position',style: TextStyle(fontSize: 20),),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

