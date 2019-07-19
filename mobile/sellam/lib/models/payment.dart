import 'package:sellam/models/payment_validity.dart';
import 'payment_type.dart';

class Payment{
  final int id;
  final PaymentType type;
  final PaymentValidity validity;

  const Payment(this.id, this.type, this.validity);
}