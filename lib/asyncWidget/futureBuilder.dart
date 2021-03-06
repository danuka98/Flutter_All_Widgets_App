import 'package:flutter/material.dart';

class FutureBuilderWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Future Builder Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

final Future<String> _calculation = Future<String>.delayed(const Duration(seconds: 2),() => 'Data Loaded');


class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: Theme.of(context).textTheme.headline2!,
        textAlign: TextAlign.center,
        child: FutureBuilder<String>(
          future: _calculation,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot){
            List<Widget> children;
            if(snapshot.hasData){
              children = <Widget>[
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('Result : ${snapshot.data}'),
                ),
              ];
            }
            else if(snapshot.hasError){
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('Error : ${snapshot.error}'),
                ),
              ];
            }
            else {
              children = const <Widget>[
                SizedBox(
                  child: CircularProgressIndicator(),
                  width: 60,
                  height: 60,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15),
                  child: Text('Awaiting result...'),
                ),
              ];
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            );
          },
        ),
    );
  }
}

