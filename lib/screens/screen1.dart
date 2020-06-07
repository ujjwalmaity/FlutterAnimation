import 'package:flutter/material.dart';
import 'package:flutteranimation/animations/animation1.dart';
import 'package:flutteranimation/utils/constance.dart';

class Screen1 extends StatelessWidget {
  static const String id = 'screen_1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation 1', style: kAppBarTitleTextStyle),
        centerTitle: true,
      ),
      body: Center(
        child: Animation1(child: Text('Hello World!')),
      ),
    );
  }
}
