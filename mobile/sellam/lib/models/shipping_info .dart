import 'package:sellam/models/shipping_type.dart';

class ShippingInfo{
  final int id;
  final ShippingType type;
  final String address;
  final double cost;

  const ShippingInfo({this.id, this.type, this.address, this.cost});
}