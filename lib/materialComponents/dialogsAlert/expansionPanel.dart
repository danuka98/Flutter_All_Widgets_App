import 'package:flutter/material.dart';

class ExpansionPanelWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('ExpansionPanel Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          text: "A material expansion panel. It has a header and a body and can be either expanded or collapsed. The body of the panel is only visible when it is expanded.\nExpansion panels are only intended to be used as children for ExpansionPanelList.\n\n",
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            TextSpan(text: 'required ExpansionPanelHeaderBuilder headerBuilder,\nrequired Widget body,\nbool isExpanded,\nbool canTapOnHeader,\nColor? backgroundColor',style: TextStyle(fontSize: 16,),),
          ],
        ),
      ),
    );
  }
}

