import 'package:sellam/models/models.dart';

class ShippingInfos{
  final int orderid;
  final ShippingType type;
  final String address;

  const ShippingInfos({this.orderid, this.type, this.address});
}

List<ShippingInfos> SHIPPING_INFOS = <ShippingInfos>[
  ShippingInfos(
    orderid: 111111,
    type: ShippingType.BUS,
    address: "Carrefor TKC, Biyemassi",
  ),
  ShippingInfos(
    orderid: 222222,
    type: ShippingType.CHECKPOINTS,
    address: 'Saamya, Dschang',
  ),
  ShippingInfos(
    orderid: 333333,
    type: ShippingType.CHECKPOINTS,
    address: 'Université de Dschang, Dschang',
  ),
  ShippingInfos(
    orderid: 444444,
    type: ShippingType.BUS,
    address: 'Mokolo en bas',
  ),
  ShippingInfos(
    orderid: 555555,
    type: ShippingType.CHECKPOINTS,
    address: 'UB joinction, Buea',
  ),
  ShippingInfos(
    orderid: 666666,
    type: ShippingType.BUS,
    address: "Omnisport, Essos",
  ),
];