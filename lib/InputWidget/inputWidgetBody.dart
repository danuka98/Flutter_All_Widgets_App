import 'package:flutter/material.dart';
import 'package:task1/InputWidget/form.dart';
import 'package:task1/InputWidget/rawKeyboardListner.dart';
import 'package:task1/constants.dart';

class InputWidgetList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Input Widgets'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FormWidget(context),
        FormFieldWidget(context),
        //RawKeyboardListenerWidget(context),
        //AutocompleteWidget(context),
      ],
    );
  }

  Widget AutocompleteWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Lime800,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Auto complete Widget',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Constants.White,
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.only(left: 135),
              //   child: IconButton(
              //     icon: const Icon(Icons.arrow_forward_ios),
              //     color: Colors.white,
              //     onPressed: () {},
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }


  Widget FormWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FormWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Lime800,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Form Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

  Widget FormFieldWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FormWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Lime800,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Form Field Widget',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Constants.White,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget RawKeyboardListenerWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Lime800,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'RawKeyboardListener Widget',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Constants.White,
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(left: mediaQueryData.size.width*0.222),
              //   child: IconButton(
              //     icon: const Icon(Icons.arrow_forward_ios),
              //     color: Constants.White,
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) =>
              //                 RawKeyboardListnerWidgetDetails()),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );

  }
}
