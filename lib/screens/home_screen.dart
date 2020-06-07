import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimation/components/CustomButton.dart';
import 'package:flutteranimation/screens/screen1.dart';
import 'package:flutteranimation/screens/screen2.dart';
import 'package:flutteranimation/utils/constance.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animation', style: kAppBarTitleTextStyle),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          CustomButton(
            text: 'Animation 1',
            onPress: () {
              Navigator.pushNamed(context, Screen1.id);
            },
          ),
          SizedBox(height: 20.0),
          CustomButton(
            text: 'Animation 2',
            onPress: () {
              Navigator.pushNamed(context, Screen2.id);
            },
          ),
        ],
      ),
    );
  }
}
