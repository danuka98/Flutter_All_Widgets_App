import 'package:flutter/material.dart';

class AnimatedModelBarrierWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Animated ModalBarrier Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ModelBarrier();
  }
}

class _ModelBarrier extends State<WidgetLists> with SingleTickerProviderStateMixin{
  bool _isLoading = false;
  late Widget _animationModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorTweenAnimation;


  @override
  void initState() {
    ColorTween  _colorTween = ColorTween(
      begin: Colors.pink,
      end: Colors.blue,
    );

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3)
    );
    _colorTweenAnimation = _colorTween.animate(_animationController);

    _animationModalBarrier = AnimatedModalBarrier(
      color: _colorTweenAnimation,
      dismissible: true,
    );

    super.initState();
  }

  List<Widget> buildWidgetList(BuildContext context) {
    List<Widget> widgets = <Widget>[
      RaisedButton(
        child: Text('Button'),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });

          _animationController.reset();
          _animationController.forward();

          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Button is pressed'))
          );

          Future.delayed(const Duration(seconds: 5), () {
            setState(() {
              _isLoading = false;
            });
          });
        },
      ),
    ];

    if (_isLoading) {
      widgets.add(_animationModalBarrier);
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 300,
                child: new Stack(
                  alignment: AlignmentDirectional.center,
                  children: buildWidgetList(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

