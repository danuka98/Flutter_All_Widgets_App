import 'package:flutter/material.dart';

class IndexedStackWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('IndexedStack Widget'),
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

  int index = 0;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: <Widget>[
          _stackedContainers(),
          _navigationButtons(),
        ],
      )
    );
  }
  Widget _stackedContainers(){
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Container(
              child: Center(
                  child: FlutterLogo(size: 150,)
              )
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _navigationButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          color:Colors.blue,
          child: Text('Flutter Logo', style: TextStyle(fontSize: 16.0,color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        FlatButton(
          color:Colors.red,
          child: Text('Red Color', style: TextStyle(fontSize: 16.0,color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
      ],
    );
  }
}

