import 'package:flutter/material.dart';
import 'package:task1/assetsImagesIconsWidget/icon.dart';
import 'package:task1/assetsImagesIconsWidget/image.dart';

class AssertsImagesIconWidgetList extends StatelessWidget {
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

    return ListView(
      children: [
        IconWidget(context),
        ImageWidget(context),
        AssetBundleWidget(context),
        RawImageWidget(context),
      ],
    );
  }

  Widget AssetBundleWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.deepOrange[600],
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
                color: Colors.white,
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

  Widget IconWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.deepOrange[600],
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
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 212),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IconWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ImageWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.deepOrange[600],
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
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 195),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageWidgetDetails())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget RawImageWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.deepOrange[600],
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
                color: Colors.white,
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