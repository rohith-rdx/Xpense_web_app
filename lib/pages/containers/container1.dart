import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web_app/utils/colors.dart';
import 'package:xpense_web_app/utils/constants.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: MobileContaainer1(), desktop: DesktopContaainer1());
  }

  Widget DesktopContaainer1() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your\nExpenses to\nsave money',
                  style: TextStyle(
                      fontSize: w! / 23,
                      height: 1.2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Helps you to organize your income  and expenses',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text(
                          'Try Free demo',
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(AppColors.primary)),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      '-web ios and android ',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 16),
                    )
                  ],
                )
              ],
            ),
          )),
          //====> Image section ===========
          Expanded(
              child: Container(
            height: 360,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/illustration1.png'),
                    fit: BoxFit.contain)),
          ))
        ],
      ),
    );
  }

  Widget MobileContaainer1() {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/illustration1.png'),
                    fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Track your\n Expenses to \n  save money',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: w! / 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Container(
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Try Free demo',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(AppColors.primary)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '-web ios and android ',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
