import 'package:flutter/material.dart';

class OffStageWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Offstage Widget'),
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
  final GlobalKey _key = GlobalKey();
  bool _offstage = true;
  
  Size _getFlutterLogoSize(){
    final RenderBox renderLogo = 
        _key.currentContext!.findRenderObject()! as RenderBox;
    return renderLogo.size;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Offstage(
            offstage: _offstage,
            child: FlutterLogo(
              key: _key,
              size: 150,
            ),
          ),
          Text('Flutter Logo is Offstage: $_offstage'),
          ElevatedButton(
            child: const Text('Toggle Offstage Value'),
            onPressed: (){
              setState(() {
                _offstage = !_offstage;
              });
            },
          ),
          if(_offstage)
            ElevatedButton(
              child: const Text('Get Flutter logo Size'),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Flutter Logo Size is ${_getFlutterLogoSize()}'),
                  ),
                );
              }),
        ],
      ),
    );
  }
}

