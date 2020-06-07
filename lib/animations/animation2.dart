import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  final Widget child;

  Animation2({@required this.child});

  @override
  _Animation1State createState() => _Animation1State();
}

class _Animation1State extends State<Animation2> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation1, animation2, animation3;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    /** https://api.flutter.dev/flutter/animation/Curves-class.html */
    animation1 = Tween(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.fastOutSlowIn,
      ),
    );

    animation2 = Tween(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );

    animation3 = Tween(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Transform(
                transform: Matrix4.translationValues(animation1.value * width, 0.0, 0.0),
                child: widget.child,
              ),
              Transform(
                transform: Matrix4.translationValues(animation2.value * width, 0.0, 0.0),
                child: widget.child,
              ),
              Transform(
                transform: Matrix4.translationValues(animation3.value * width, 0.0, 0.0),
                child: widget.child,
              ),
            ],
          ),
        );
      },
    );
  }
}
