import 'package:sellam/models/product.dart';

class OrderDetail{
  final Product product;
  final int quantity;

  const OrderDetail({this.product, this.quantity});

  double get cost => this.quantity*this.product.price;
}