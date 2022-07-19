import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_flight/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlineStyle3,
                        ),
                        Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headlineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img_1.png'),
                          )),
                    )
                  ],
                ),
                Gap(25),
                Row(
                  children: [
                    Gap(25),
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xffbfc205),
                    ),
                    Text(
                      'Search',
                      style: Styles.headlineStyle4,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
