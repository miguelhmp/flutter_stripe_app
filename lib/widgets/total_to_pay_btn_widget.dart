import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalToPayBtn extends StatelessWidget {
  const TotalToPayBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '250.55 USD',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          _BtnPay(),
        ],
      ),
    );
  }
}

class _BtnPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return true
        ? buildCreditCardPayBtn(context)
        : buildAppleAndAndroidPayBtn(context);
  }

  Widget buildCreditCardPayBtn(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 150,
      shape: StadiumBorder(),
      elevation: 0,
      color: Colors.black,
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.solidCreditCard,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Pay',
            style: TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
      onPressed: () {},
    );
  }

  Widget buildAppleAndAndroidPayBtn(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 150,
      shape: StadiumBorder(),
      elevation: 0,
      color: Colors.black,
      child: Row(
        children: [
          FaIcon(
            Platform.isAndroid
                ? (FontAwesomeIcons.googlePay)
                : (FontAwesomeIcons.applePay),
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
