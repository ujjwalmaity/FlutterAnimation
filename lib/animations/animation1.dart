import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  final Widget child;

  Animation1({@required this.child});

  @override
  _Animation1State createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    animation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        /** https://api.flutter.dev/flutter/animation/Curves-class.html */
        curve: Curves.bounceOut,
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
    final double height = MediaQuery.of(context).size.height;

    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Transform(
          transform: Matrix4.translationValues(0.0, animation.value * height, 0.0),
          child: widget.child,
        );
      },
    );
  }
}
