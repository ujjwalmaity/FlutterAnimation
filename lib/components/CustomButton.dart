import 'package:flutter/material.dart';
import 'package:flutteranimation/utils/constance.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const CustomButton({@required this.text, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        color: Colors.teal,
      ),
      child: FlatButton(
        onPressed: onPress,
        child: Text(text, style: kButtonTextStyle),
      ),
    );
  }
}
