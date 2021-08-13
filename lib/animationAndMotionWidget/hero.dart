import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroWidgetDetails extends StatelessWidget {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Hero(
            tag: 'hero-rectangle',
            child: _blueRecatangle(const Size(50, 50)),
          ),
          onTap: () => _gotoDetailsPage(context),
          title: const Text('Tap on the icon to view hero animation'),
        ),
      ],
    );
  }

  Widget _blueRecatangle(Size size){
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }

  void _gotoDetailsPage(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(tag: 'hero-rectangle', child: _blueRecatangle(const Size(200, 200))
              ),
            ],
          ),
        )
      )
    ));
  }

}

