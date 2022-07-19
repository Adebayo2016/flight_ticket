import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Good Morning"),
                    Image.asset("assets/image/img_1.png"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
