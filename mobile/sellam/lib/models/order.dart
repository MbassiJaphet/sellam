import 'package:sellam/models/models.dart';

class Order{
  final int id;
  final String userid;
  final List<OrderDetail> details;
  final PaymentType paymentType;
  final ShippingInfos info;
  final String creationDate;
  final String shippingDate;

  const Order({this.id, this.userid, this.details, this.paymentType, this.info, this.creationDate, this.shippingDate,});
}

List<Order> ORDERS = <Order>[
  Order(
    id: 111111,
    details: [
      ORDER_DETAILS[0],
      ORDER_DETAILS[3],
    ],
    paymentType: PaymentType.AT_DELIVERY,
    info: SHIPPING_INFOS[0],
    creationDate: '2019-08-14',
  ),
  Order(
    id: 222222,
    details: [
      ORDER_DETAILS[0],
      ORDER_DETAILS[1],
      ORDER_DETAILS[2],
    ],
    paymentType: PaymentType.MOBILE_MONEY,
    info: SHIPPING_INFOS[1],
    creationDate: '2019-07-24',
  ),
  Order(
    id: 333333,
    details: [
      ORDER_DETAILS[1],
      ORDER_DETAILS[2],
    ],
    paymentType: PaymentType.AT_DELIVERY,
    info: SHIPPING_INFOS[2],
    creationDate: '2019-05-13',
  ),
  Order(
    id: 444444,
    details: [
      ORDER_DETAILS[3],
    ],
    paymentType: PaymentType.AT_DELIVERY,
    info: SHIPPING_INFOS[3],
    creationDate: '2019-03-18',
  ),
  Order(
    id: 555555,
    details: [
      ORDER_DETAILS[1],
    ],
    paymentType: PaymentType.MOBILE_MONEY,
    info: SHIPPING_INFOS[4],
    creationDate: '2018-12-29',
  ),
  Order(
    id: 666666,
    details: [
      ORDER_DETAILS[0],
      ORDER_DETAILS[1],
      ORDER_DETAILS[2],
      ORDER_DETAILS[3],
    ],
    paymentType: PaymentType.MOBILE_MONEY,
    info: SHIPPING_INFOS[5],
    creationDate: '2018-11-09',
  ),
];