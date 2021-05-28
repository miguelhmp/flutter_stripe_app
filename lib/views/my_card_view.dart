import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_stripe_app/models/credit_card_model.dart';
import 'package:flutter_stripe_app/widgets/total_to_pay_btn_widget.dart';

class MyCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tempCard = MyCreditCard(
        cardNumberHidden: '4242',
        cardNumber: '4242424242424242',
        brand: 'visa',
        cvv: '213',
        expiracyDate: '01/25',
        cardHolderName: 'Fernando Herrera');

    return Scaffold(
      appBar: AppBar(
        title: Text('Pay'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(),
          Hero(
            tag: tempCard.cardNumber,
            child: CreditCardWidget(
              cardNumber: tempCard.cardNumber,
              expiryDate: tempCard.expiracyDate,
              cardHolderName: tempCard.cardHolderName,
              cvvCode: tempCard.cvv,
              showBackView: false,
            ),
          ),
          Positioned(
            bottom: 0,
            child: TotalToPayBtn(),
          ),
        ],
      ),
    );
  }
}
