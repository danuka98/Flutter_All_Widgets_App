import 'package:flutter/material.dart';
import 'package:task1/assetsImagesIconsWidget/icon.dart';
import 'package:task1/assetsImagesIconsWidget/image.dart';
import 'package:task1/constants.dart';

class AssertsImagesIconWidgetList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Assets Images And Icons Widgets'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        IconWidget(context),
        ImageWidget(context),
        //AssetBundleWidget(context),
        //RawImageWidget(context),
      ],
    );
  }

  Widget AssetBundleWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.DeepOrange600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Asset Bundle Widget',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Constants.White,
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.only(left: 140),
              //   child: IconButton(
              //     icon: const Icon(Icons.arrow_forward_ios),
              //     color: Colors.white,
              //     onPressed: () {  },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }


  Widget IconWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => IconWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepOrange600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Icon Widget',
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


  Widget ImageWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ImageWidgetDetails())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.DeepOrange600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Image Widget',
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


  Widget RawImageWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.DeepOrange600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'RawImage Widget',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Constants.White,
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.only(left: 160),
              //   child: IconButton(
              //     icon: const Icon(Icons.arrow_forward_ios),
              //     color: Colors.white,
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => RawImageWidgetDetails())
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