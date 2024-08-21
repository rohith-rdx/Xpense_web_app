import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_app/utils/colors.dart';
import 'package:xpense_web_app/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: DesktopNavBar(),
      mobile: MobileNavBar(),
    );
  }

//========= MOBILE NAVBAR =======>

  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

//====== DesktopNavBar ========

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borederedButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/logo.png")))),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          )),
    );
  }
}
