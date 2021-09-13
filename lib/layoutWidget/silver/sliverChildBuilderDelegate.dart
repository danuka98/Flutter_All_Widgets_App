import 'package:flutter/material.dart';

class SliverChildBuilderDelegateWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('SliverChildBuilderDelegate Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      semanticChildCount: 8,
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate((BuildContext context, int index){
              return const Text('SliverChildBuilderDelegate',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),);
          },
            childCount: 4,
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return const Text('SliverChildBuilderDelegate',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),);
            },
            childCount: 4,
            semanticIndexOffset: 2,
          ),
        ),
      ],
    );
  }
}

