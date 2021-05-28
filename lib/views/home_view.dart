import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_stripe_app/data/my_cards_data.dart';
import 'package:flutter_stripe_app/helpers/helpers.dart';
import 'package:flutter_stripe_app/views/my_card_view.dart';
import 'package:flutter_stripe_app/widgets/total_to_pay_btn_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.plus,
              size: 15,
            ),
            onPressed: () async {
              // showLoading(context);
              // await Future.delayed(Duration(seconds: 1));
              // Navigator.pop(context);

              showAlert(context, 'Gola', 'Que pedo xd');
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            width: size.width,
            height: size.height,
            top: 200,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.9),
              physics: BouncingScrollPhysics(),
              itemCount: myCards.length,
              itemBuilder: (_, index) {
                final myCard = myCards[index];
                return GestureDetector(
                  child: Hero(
                    tag: myCard.cardNumber,
                    child: CreditCardWidget(
                      cardNumber: myCard.cardNumber,
                      expiryDate: myCard.expiracyDate,
                      cardHolderName: myCard.cardHolderName,
                      cvvCode: myCard.cvv,
                      showBackView: false,
                    ),
                  ),
                  onTap: () {
                    // print(myCard.cardHolderName);
                    Navigator.push(
                      context,
                      fadeInNavCard(context, MyCardView()),
                    );
                  },
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: TotalToPayBtn(),
          )
        ],
      ),
    );
  }
}
