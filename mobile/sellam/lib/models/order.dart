import 'package:sellam/models/order_details.dart';
import 'package:sellam/models/user.dart';
import 'package:sellam/models/payment.dart';
import 'package:sellam/models/shipping_info .dart';

class Order{
  final int id;
  final User user;
  final List<OrderDetail> details;
  final Payment payment;
  final ShippingInfo info;
  final String creationDate;
  final String shippingDate;

  const Order({this.id, this.user, this.payment, this.details, this.info, this.creationDate, this.shippingDate,});
}