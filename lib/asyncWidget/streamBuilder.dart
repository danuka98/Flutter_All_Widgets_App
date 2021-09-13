import 'package:flutter/material.dart';
import 'package:task1/StylingWidget/padding.dart';

class StreamBuilderWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Stream Builder Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

final Stream<int> _bids = (() async* {
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
})();



class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headline2!,
      textAlign: TextAlign.center,
      child: Container(
        alignment: FractionalOffset.center,
        color: Colors.white,
        child: StreamBuilder<int>(
          stream: _bids,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot){
            List<Widget> children;
            if(snapshot.hasError){
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('Error: ${snapshot.error}'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text('Stack trace: ${snapshot.stackTrace}'),
                ),
              ];
            }
            else{
              switch(snapshot.connectionState){
                case ConnectionState.none:
                  children = const <Widget>[
                    Icon(
                      Icons.info,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text('Select a lot'),
                    ),
                  ];
                  break;
                case ConnectionState.waiting:
                  children = const <Widget>[
                    SizedBox(
                      child: CircularProgressIndicator(),
                      width: 50,
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text('Awaiting Bids...'),
                    ),
                  ];
                  break;
                case ConnectionState.active:
                  children = <Widget>[
                    const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text('\$${snapshot.data}'),
                    ),
                  ];
                  break;
                case ConnectionState.done:
                  children = <Widget>[
                    const Icon(
                      Icons.info,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text('\$${snapshot.data} (closed)'),
                    ),
                  ];
                  break;
              }
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            );
          },
        ),
      ),
    );
  }
}

