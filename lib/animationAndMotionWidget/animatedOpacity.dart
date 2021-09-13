import 'package:flutter/material.dart';

class AnimatedOpacityWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Animated Opacity Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatefulWidget{
  @override
  State<WidgetLists> createState() => LogoFadeState();
}

class LogoFadeState extends State<WidgetLists>{
  double opacityLevel = 1;

  void _changeOpacity(){
    setState(() => opacityLevel = opacityLevel == 0 ? 1 : 0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(size: 250,),
          ),
          ElevatedButton(
              onPressed: _changeOpacity,
              child: const Text('Animated Opacity')
          ),
        ],
      ),
    );
  }

}

