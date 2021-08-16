import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/StylingWidget/padding.dart';
import 'package:task1/animationAndMotionWidget/animatedAlign.dart';
import 'package:task1/basicWidget/column.dart';
import 'package:task1/basicWidget/container.dart';
import 'package:task1/basicWidget/row.dart';
import 'package:task1/layoutWidget/align.dart';
import 'package:task1/layoutWidget/aspectRatio.dart';
import 'package:task1/layoutWidget/baseLine.dart';
import 'package:task1/layoutWidget/center.dart';
import 'package:task1/layoutWidget/constrainedBox.dart';
import 'package:task1/layoutWidget/customSingleChildLayout.dart';
import 'package:task1/layoutWidget/expanded.dart';
import 'package:task1/layoutWidget/fittedBox.dart';
import 'package:task1/layoutWidget/fractionalSized.dart';
import 'package:task1/layoutWidget/intrinsicHeight.dart';
import 'package:task1/layoutWidget/intrinsicWidth.dart';
import 'package:task1/layoutWidget/limitedBox.dart';
import 'package:task1/layoutWidget/multiChild/customMultiChildLayout.dart';
import 'package:task1/layoutWidget/multiChild/flow.dart';
import 'package:task1/layoutWidget/multiChild/gridView.dart';
import 'package:task1/layoutWidget/multiChild/indexedStack.dart';
import 'package:task1/layoutWidget/multiChild/layoutBuilder.dart';
import 'package:task1/layoutWidget/multiChild/listBody.dart';
import 'package:task1/layoutWidget/multiChild/listView.dart';
import 'package:task1/layoutWidget/multiChild/stack.dart';
import 'package:task1/layoutWidget/multiChild/table.dart';
import 'package:task1/layoutWidget/multiChild/wrap.dart';
import 'package:task1/layoutWidget/offStage.dart';
import 'package:task1/layoutWidget/overflowBox.dart';
import 'package:task1/layoutWidget/silver/cupertinoSliverNavigationBar.dart';
import 'package:task1/layoutWidget/silver/customScrollView.dart';
import 'package:task1/layoutWidget/silver/sliverAppBar.dart';
import 'package:task1/layoutWidget/silver/sliverChildBuilderDelegate.dart';
import 'package:task1/layoutWidget/silver/sliverChildListDelegate.dart';
import 'package:task1/layoutWidget/silver/sliverFixedExtentList.dart';
import 'package:task1/layoutWidget/silver/sliverGrid.dart';
import 'package:task1/layoutWidget/silver/sliverPadding.dart';
import 'package:task1/layoutWidget/silver/sliverPersistentHeader.dart';
import 'package:task1/layoutWidget/silver/sliverToBoxAdapter.dart';
import 'package:task1/layoutWidget/sizedBox.dart';
import 'package:task1/layoutWidget/sizedOverflowBox.dart';
import 'package:task1/paintingAndEffectsWidget/transform.dart';

class LayoutWidgetList extends StatelessWidget {
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
        Single_ChildLayoutWidget(),
        AlignWidget(context),
        AspectRatioWidget(context),
        BaselineWidget(context),
        CenterWidget(context),
        ConstrainedBoxWidget(context),
        ContainerWidget(context),
        CustomSingleChildLayoutWidget(context),
        ExpandedWidget(context),
        FittedBoxWidget(context),
        FractionalSizedWidget(context),
        IntrinsicHeightWidget(context),
        IntrinsicWidthWidget(context),
        LimitedBoxWidget(context),
        OffstageWidget(context),
        OverflowBoxWidget(context),
        PaddingWidget(context),
        SizedBoxWidget(context),
        SizedOverflowBoxWidget(context),
        TransformWidget(context),
        Multi_ChildLayoutWidget(),
        ColumnWidget(context),
        CustomMultiChildLayoutWidget(context),
        FlowWidget(context),
        GridViewWidget(context),
        IndexedStackWidget(context),
        LayoutBuilderWidget(context),
        ListBodyWidget(context),
        ListViewWidget(context),
        RowWidget(context),
        StackWidget(context),
        TableWidget(context),
        WrapWidget(context),
        SilverLayoutWidget(),
        CupertinoSliverNavigationBarWidget(context),
        CustomScrollViewWidget(context),
        SliverAppBarWidget(context),
        SliverChildBuilderDelegateWidget(context),
        SliverChildListDelegateWidget(context),
        SliverFixedExtentListWidget(context),
        SliverGridWidget(context),
        SliverListWidget(context),
        SliverPaddingWidget(context),
        SliverPersistentHeaderWidget(context),
        SliverToBoxAdapterWidget(context),
      ],
    );
  }
  Widget Single_ChildLayoutWidget() => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Single Child Layout Widgets',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 90),
              child: Icon(
                Icons.widgets,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AlignWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Align Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 205),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlignWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget AspectRatioWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'AspectRatio Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 150),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AspectRatioWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget BaselineWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'BaseLine Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 175),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BaseLineWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget CenterWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Center Widget',
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
                    MaterialPageRoute(builder: (context) => CenterWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ConstrainedBoxWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'ConstrainedBox Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 120),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConstrainedBoxWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ContainerWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Container Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 170),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContainerWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget CustomSingleChildLayoutWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'CustomSingleChildLayout Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomSingleChildLayoutWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ExpandedWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Expanded Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 170),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExpandedWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget FittedBoxWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'FittedBox Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 172),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FittedBoxWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget FractionalSizedWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'FractionalSized Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 125),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FractionalSizedWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget IntrinsicHeightWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'IntrinsicHeight Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 130),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntrinsicHeightWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget IntrinsicWidthWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'IntrinsicWidth Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 138),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntrinsicWidthWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget LimitedBoxWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'LimitedBox Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 160),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LimitedBoxWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget OffstageWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Offstage Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 180),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OffStageWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget OverflowBoxWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'OverflowBox Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 145),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OverflowBoxWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget PaddingWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Padding Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 182),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaddingWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SizedBoxWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SizedBox Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 175),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SizedBoxWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SizedOverflowBoxWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SizedOverflowBox Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 105),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SizedOverflowBoxWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget TransformWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Transform Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 168),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TransformWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget Multi_ChildLayoutWidget() => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Multi Child Layout Widgets',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
              child: Icon(
                Icons.widgets,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ColumnWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Column Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 190),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColumnWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget CustomMultiChildLayoutWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'CustomMultiChildLayout Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 53),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomMultiChildLayoutWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget FlowWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Flow Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 215),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlowWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget GridViewWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'GridView Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 180),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridViewWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget IndexedStackWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'IndexedStack Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 143),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IndexedStackWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget LayoutBuilderWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'LayoutBuilder Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 142),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutBuilderWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ListBodyWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'ListBody Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 185),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListBodyWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget ListViewWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'ListView Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 185),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListViewWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget RowWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Row Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 220),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RowWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget StackWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Stack Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 208),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget TableWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Table Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 210),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TableWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget WrapWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Wrap Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 215),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WrapWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SilverLayoutWidget() => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'Silver Layout Widgets',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 145),
              child: Icon(
                Icons.widgets,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget CupertinoSliverNavigationBarWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'CupertinoSliverNavigationBar Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CupertinoSliverNavigationBarWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget CustomScrollViewWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'CustomScrollView Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 110),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomScrollViewWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverAppBarWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverAppBar Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 152),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverAppBarWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverChildBuilderDelegateWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverChildBuilderDelegate Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 42),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverChildBuilderDelegateWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverChildListDelegateWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverChildListDelegate Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 70),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverChildListDelegateWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverFixedExtentListWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverFixedExtentList Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 90),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverFixedExtentListWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverGridWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverGrid Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 180),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverGridWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverListWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverList Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 182),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomScrollViewWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverPaddingWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverPadding Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 145),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverPaddingWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverPersistentHeaderWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverPersistentHeader Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 70),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverPersistentHeaderWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget SliverToBoxAdapterWidget(BuildContext context) => Container(
    height: 70,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.green[600],
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          children: [
            Text(
              'SliverToBoxAdapter Widget',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliverToBoxAdapterWidgetDetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}