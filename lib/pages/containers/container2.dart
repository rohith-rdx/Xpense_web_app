import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_app/utils/colors.dart';


class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: MobileContainer2(), desktop: DesktopContainer2());
  }

  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                      height: 320,
                      width: 320,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/vector.png'))))),
              Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                      height: 320,
                      width: 320,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/vector1.png'),
                              fit: BoxFit.contain)))),
              Positioned(
                left: 43,
                right: 43,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 712,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/dashboard.png'))),
                ),
              )
            ],
          )),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companylogo('images/fb.png'),
                companylogo('images/google.png'),
                companylogo('images/cocacola.png'),
                companylogo('images/samsung.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget MobileContainer2() {
    return Container();
  }

  Widget companylogo(String image) {
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
