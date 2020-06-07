import 'package:flutter/material.dart';
import 'package:flutteranimation/animations/animation2.dart';
import 'package:flutteranimation/utils/constance.dart';

class Screen2 extends StatelessWidget {
  static const String id = 'screen_2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation 2', style: kAppBarTitleTextStyle),
        centerTitle: true,
      ),
      body: Center(
        child: Animation2(
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
