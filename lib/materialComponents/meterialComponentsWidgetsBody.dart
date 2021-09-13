
import 'package:flutter/material.dart';
import 'package:task1/accessbilityWidget/exludeSemantics.dart';
import 'package:task1/accessbilityWidget/mergeSemantics.dart';
import 'package:task1/accessbilityWidget/semantics.dart';
import 'package:task1/assetsImagesIconsWidget/icon.dart';
import 'package:task1/assetsImagesIconsWidget/image.dart';
import 'package:task1/basicWidget/appbar.dart';
import 'package:task1/basicWidget/scaffold.dart';
import 'package:task1/constants.dart';
import 'package:task1/layoutWidget/multiChild/gridView.dart';
import 'package:task1/layoutWidget/silver/sliverAppBar.dart';
import 'package:task1/materialComponents/Buttons/TextField.dart';
import 'package:task1/materialComponents/Buttons/checkbox.dart';
import 'package:task1/materialComponents/Buttons/dateTimePickers.dart';
import 'package:task1/materialComponents/Buttons/dropdownButtons.dart';
import 'package:task1/materialComponents/Buttons/elevatedButton.dart';
import 'package:task1/materialComponents/Buttons/floatingActionButton.dart';
import 'package:task1/materialComponents/Buttons/iconButton.dart';
import 'package:task1/materialComponents/Buttons/outlinedButton.dart';
import 'package:task1/materialComponents/Buttons/popupmenuButton.dart';
import 'package:task1/materialComponents/Buttons/radio.dart';
import 'package:task1/materialComponents/Buttons/slider.dart';
import 'package:task1/materialComponents/Buttons/switch.dart';
import 'package:task1/materialComponents/Buttons/textButton.dart';
import 'package:task1/materialComponents/Information%20displays/LinearProgressIndicator.dart';
import 'package:task1/materialComponents/Information%20displays/card.dart';
import 'package:task1/materialComponents/Information%20displays/chip.dart';
import 'package:task1/materialComponents/Information%20displays/circularProgressIndicator.dart';
import 'package:task1/materialComponents/Information%20displays/dataTable.dart';
import 'package:task1/materialComponents/Information%20displays/divider.dart';
import 'package:task1/materialComponents/Information%20displays/listTile.dart';
import 'package:task1/materialComponents/Information%20displays/stepper.dart';
import 'package:task1/materialComponents/Information%20displays/tooltip.dart';
import 'package:task1/materialComponents/bottomNavigation.dart';
import 'package:task1/materialComponents/dialogsAlert/alertDialog.dart';
import 'package:task1/materialComponents/dialogsAlert/bottomSheet.dart';
import 'package:task1/materialComponents/dialogsAlert/expansionPanel.dart';
import 'package:task1/materialComponents/dialogsAlert/simpleDialog.dart';
import 'package:task1/materialComponents/dialogsAlert/snackBar.dart';
import 'package:task1/materialComponents/drawer.dart';
import 'package:task1/materialComponents/materialApp.dart';
import 'package:task1/materialComponents/tabBar.dart';
import 'package:task1/materialComponents/tabController.dart';
import 'package:task1/materialComponents/tabPageSelector.dart';
import 'package:task1/materialComponents/tabView.dart';
import 'package:task1/materialComponents/widgetsApp.dart';

class MaterialComponentsWidgetList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Material Components Widgets'),
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
        AppStructureAndNavigation(),
        AppBarWidget(context),
        BottomNavigationWidget(context),
        DrawerWidget(context),
        MaterialAppWidget(context),
        ScaffoldWidget(context),
        SliverAppBarWidget(context),
        TabBarWidget(context),
        TabBarViewWidget(context),
        TabControllerWidget(context),
        TabPageSelectorWidget(context),
        WidgetsAppWidget(context),
        ButtonsWidget(),
        DropdownButtonWidget(context),
        ElevatedButtonWidget(context),
        FloatingActionButtonWidget(context),
        IconButtonWidget(context),
        OutlinedButtonWidget(context),
        PupupMenuButtonWidget(context),
        TextButtonWidget(context),
        InputAndSelections(),
        CheckboxWidget(context),
        DateTimePickersWidget(context),
        RadioWidget(context),
        SliderWidget(context),
        SwitchWidget(context),
        TextFieldWidget(context),
        DialogsAlertsAndpanels(),
        AlertDialogWidget(context),
        BottomSheetWidget(context),
        ExpansionPanelWidget(context),
        SimpleDialogWidget(context),
        SnackbarWidget(context),
        InformationDisplays(),
        CardWidget(context),
        ChipWidget(context),
        CircularProgressIndicatorWidget(context),
        DatatableWidget(context),
        GridViewWidget(context),
        IconWidget(context),
        ImageWidget(context),
        LinearProgressIndicatorWidget(context),
        TooltipWidget(context),
        Layout(),
        DividerWidget(context),
        ListTileWidget(context),
        StepperWidget(context),
      ],
    );
  }

  Widget AppStructureAndNavigation() => Container(
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
              'App Structure And Navigation',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 75),
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

  Widget AppBarWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppbarWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'AppBar Widget',
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

  Widget BottomNavigationWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomNavigationWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Bottom Navigation Widget',
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

  Widget DrawerWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DrawerWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Drawer Widget',
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

  Widget MaterialAppWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MaterialAppWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'MaterialApp Widget',
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

  Widget ScaffoldWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScaffoldWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Scaffold Widget',
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

  Widget SliverAppBarWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SliverAppBarWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
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

  Widget TabBarWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TabBarWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'TabBar Widget',
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

  Widget TabBarViewWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TabBarViewWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'TabBarView Widget',
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

  Widget TabControllerWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return  Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TabControllerWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'TabController Widget',
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

  Widget TabPageSelectorWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TabPageSelectorWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'TabPageSelector Widget',
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

  Widget WidgetsAppWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WidgetsAppWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'WidgetsApp Widget',
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

  Widget ButtonsWidget() => Container(
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
              'Buttons',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 260),
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

  Widget DropdownButtonWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DropDownButtonsWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Dropdown Button Widget',
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

  Widget ElevatedButtonWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ElevatedButtonWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'ElevatedButton Widget',
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

  Widget FloatingActionButtonWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FloatingActionButtonWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color:Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'FloatingActionButton Widget',
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

  Widget IconButtonWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IconButtonWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'IconButton Widget',
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

  Widget OutlinedButtonWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OutlinedButtonWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'OutlinedButton Widget',
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

  Widget PupupMenuButtonWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PopupMenuButtonWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'PopupMenuButton Widget',
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

  Widget TextButtonWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TextButtonWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'TextButton Widget',
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

  Widget InputAndSelections() => Container(
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
              'Input And Selections',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 155),
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

  Widget CheckboxWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckBoxWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Checkbox Widget',
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

  Widget DateTimePickersWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DateTimePickersWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'DateTimePickers Widget',
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

  Widget RadioWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RadioWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Radio Widget',
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

  Widget SliderWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SliderWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Slider Widget',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color:Constants.White,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  }

  Widget SwitchWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SwitchWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Switch Widget',
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

  Widget TextFieldWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TextFiledWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'TextField Widget',
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

  Widget DialogsAlertsAndpanels() => Container(
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
              'Dialogs, Alerts and Panels',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 110),
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

  Widget AlertDialogWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AlertDialogWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'AlertDialog Widget',
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

  Widget BottomSheetWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomSheetWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'BottomSheet Widget',
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

  Widget ExpansionPanelWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height:mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ExpansionPanelWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'ExpansionPanel Widget',
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

  Widget SimpleDialogWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SimpleDialogWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'SimpleDialog Widget',
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

  Widget SnackbarWidget(BuildContext context){
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height:mediaQueryData.size.height*0.1,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SnackBarWidgetDetails()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Constants.Teal600,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                Text(
                  'Snackbar Widget',
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

  Widget InformationDisplays() => Container(
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
              'Information Displays',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 155),
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

  Widget CardWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Card Widget',
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

  Widget ChipWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChipWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Chip Widget',
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

  Widget CircularProgressIndicatorWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CircularProgressIndicatorWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'CircularProgressIndicator Widget',
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

  Widget DatatableWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DataTableWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Datatable Widget',
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

  Widget GridViewWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GridViewWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
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

  Widget IconWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IconWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
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
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ImageWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
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

  Widget LinearProgressIndicatorWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LinearProgressIndicatorWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'LinearProgressIndicator Widget',
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

  Widget TooltipWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ToolTipWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Tooltip Widget',
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

  Widget Layout() => Container(
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
              'Layout',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 270),
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

  Widget DividerWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DividerWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color:  Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Divider Widget',
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

  Widget ListTileWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListTileWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color:  Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'ListTile Widget',
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

  Widget StepperWidget(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
    height: mediaQueryData.size.height*0.1,
    child: GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StepperWidgetDetails()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color:  Constants.Teal600,
        child: Padding(
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text(
                'Stepper Widget',
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
}