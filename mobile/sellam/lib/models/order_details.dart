import 'package:sellam/models/models.dart';

class OrderDetail{
  final Product product;
  final int quantity;

  const OrderDetail({this.product, this.quantity});

  double get cost => this.quantity*this.product.price;
}

List<OrderDetail> ORDER_DETAILS = [
  OrderDetail(
    product: PRODUCTS[0],
    quantity: 3,
  ),
  OrderDetail(
    product: PRODUCTS[1],
    quantity: 1,
  ),
  OrderDetail(
    product: PRODUCTS[2],
    quantity: 4,
  ),
  OrderDetail(
    product: PRODUCTS[3],
    quantity: 2,
  ),
];