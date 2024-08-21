import 'package:flutter/material.dart';
import 'package:xpense_web_app/pages/home.dart';
import 'package:xpense_web_app/utils/colors.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      theme: ThemeData(
        primaryColorLight: Colors.white,
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        primaryColor: Colors.white
      ),
      home: Home(),
    );
  }
}