import 'dart:ui';

import 'package:flutter/material.dart';

class CustomPaintWidgetDetails extends StatelessWidget {
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
    return CustomPaint(
      size: Size(300,200),
      painter: LinePainter(),
      child: const Center(
        child: Text(
          'Custom Paint...',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
            color: Color(0xFFFFFFFF)
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = Colors.teal
        ..strokeWidth = 100;

    Offset start = Offset(0, size.height/2);
    Offset end = Offset(size.width, size.height/2);

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

