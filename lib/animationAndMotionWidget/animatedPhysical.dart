import 'package:flutter/material.dart';

class AnimatedPhysicalWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Animated PhysicalModel Widget'),
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
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 400),
          color: Colors.blue,
          shadowColor: Colors.black,
          curve: Curves.fastOutSlowIn,
          elevation: selected ? 0 : 75,
          shape: BoxShape.rectangle,
          borderRadius: selected ? const BorderRadius.all(Radius.circular(0)) 
              : const BorderRadius.all(Radius.circular(20)),
          child: Container(
            height: 250,
            width: 275,
            color: Colors.blue[50],
            child: FlutterLogo(size: 150,),
          )
        ),
      ),
    );
  }

}

