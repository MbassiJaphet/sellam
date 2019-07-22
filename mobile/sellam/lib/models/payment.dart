import 'package:sellam/models/models.dart';

class Payment{
  final int id;
  final PaymentType type;
  final PaymentValidity validity;

  const Payment({this.id, this.type, this.validity});
}
List<Payment> PAYMENTS = [
  Payment(
    id: 1,
    type: PaymentType.AT_DELIVERY,
    validity: PaymentValidity.VALID,
  ),
  Payment(
    id: 2,
    type: PaymentType.MOBILE_MONEY,
    validity: PaymentValidity.VALID,
  ),
  Payment(
    id: 3,
    type: PaymentType.AT_DELIVERY,
    validity: PaymentValidity.VALID,
  ),
  Payment(
    id: 4,
    type: PaymentType.MOBILE_MONEY,
    validity: PaymentValidity.VALID,
  ),
];