import 'package:flutter/material.dart';
import 'package:xpense_web_app/pages/containers/container1.dart';
import 'package:xpense_web_app/pages/containers/container2.dart';
import 'package:xpense_web_app/utils/constants.dart';
import 'package:xpense_web_app/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {

    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
            NavBar(),
            Container1(),
            Container2()
            ],
          ),
          
        ),
      ),
    );
  }
}