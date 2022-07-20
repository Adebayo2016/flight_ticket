import 'package:flutter/material.dart';
import 'package:my_flight/utils/app_layout.dart';
import 'package:my_flight/utils/app_styles.dart';

import '../utils/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
             decoration: const BoxDecoration(
                 color: Color(0xFF526799),
               borderRadius:BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
             ),

              padding: const  EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      'Lag',
                      style: Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    //expanded Widget takes empty spaces and divide them among widgets
                    Expanded(child: Container()),
                    const ThickContainer(),
                    Expanded(child: SizedBox(
                      height: 24,
                      child: LayoutBuilder(

                        builder: (BuildContext context, BoxConstraints constraints) {

                          print ('width is ${constraints.constrainWidth()}');

                          return  Flex(direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(5, (index) => Text('-')),

                          );
                        },

                      ),
                    )),
                    const ThickContainer(),
                    Expanded(child: Container()),
                    Text(
                      'Abuja',
                      style: Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
