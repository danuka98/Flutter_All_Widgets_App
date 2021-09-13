import 'package:flutter/material.dart';

class AppbarWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Appbar Widget'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next Page',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context){
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                  );
                }
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('This is a Home Page',style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
