// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
//
// class AnimatedListStateWidgetDetails extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: true,
//         title: Text('Animatedlist'),
//       ),
//       body: WidgetLists(),
//     );
//   }
// }
//
// class WidgetLists extends StatefulWidget{
//   @override
//   State<WidgetLists> createState() => _WidgetListsState();
// }
//
// class _WidgetListsState extends State<WidgetLists>{
//   final GlobalKey<AnimatedListState> _listkey = GlobalKey<AnimatedListState>();
//   late ListModel<int> _list;
//   int? _selectedItem;
//   late int _nextItem;
//
//   @override
//   void initState(){
//     super.initState();
//     _list = ListModel<int>(
//       listKey: _listkey,
//       initialItems: <int>[0, 1, 2],
//       removedItemBuilder: _buildRemovedItem,
//     );
//     _nextItem = 3;
//   }
//
//   @override
//   Widget _buildItem(BuildContext context, int index, Animation<double> animation) {
//     return CardItem(
//       animation: animation,
//       item: _list[index],
//       selected: _selectedItem = _list[index],
//       onTap: (){
//         setState(() {
//           _selectedItem = _selectedItem == _list[index] ? null : _list[index];
//         });
//       },
//     );
//   }
//
//   Widget _buildRemovedItem(int item, BuildContext context, Animation<double> animation){
//     return CardItem(
//       animation: animation,
//       item: item,
//       selected: false,
//     );
//   }
//
//   void _insert(){
//     final int index = _selectedItem == null ? _list.length : _list.indexOf(_selectedItem!);
//     _list.insert(index, _nextItem++);
//   }
//
//   void _remove(){
//     if(_selectedItem != null){
//       _list.removeAt(_list.indexOf(_selectedItem!));
//       setState(() {
//         _selectedItem = null;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context){
//     return
//   }
//
// }
//
