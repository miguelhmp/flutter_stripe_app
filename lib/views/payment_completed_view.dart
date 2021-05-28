import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentCompletedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment completed'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.star,
              color: Colors.white60,
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Payment successful',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 18,
                letterSpacing: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
