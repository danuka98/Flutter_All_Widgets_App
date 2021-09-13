import 'package:flutter/material.dart';

class FormWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Form Widget'),
      ),
      body: WidgetLists(),
    );
  }
}
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Your Name',
              ),
              validator: (String? value){
                if(value == null || value.isEmpty){
                  return 'Please Enter Your Name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  //process data
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );

  }
}

