import 'package:meta/meta.dart';

class MyCreditCard {
  final String cardNumberHidden,
      cardNumber,
      brand,
      cvv,
      expiracyDate,
      cardHolderName;

  MyCreditCard({
    @required this.cardNumberHidden,
    @required this.cardNumber,
    @required this.brand,
    @required this.cvv,
    @required this.expiracyDate,
    @required this.cardHolderName,
  });
}
