import 'package:flutter/material.dart';
import 'package:my_flight/utils/app_layout.dart';
class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
            )
          ],
        ),
      ),


    );
  }
}
