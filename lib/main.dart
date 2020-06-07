import 'package:flutter/material.dart';
import 'package:flutteranimation/screens/home_screen.dart';
import 'package:flutteranimation/screens/screen1.dart';
import 'package:flutteranimation/screens/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Screen1.id: (context) => Screen1(),
        Screen2.id: (context) => Screen2(),
      },
    );
  }
}
