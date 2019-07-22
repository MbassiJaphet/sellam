import 'package:flutter/material.dart';

import 'package:sellam/app.dart';
import 'package:sellam/models/models.dart';

class ShippingInfosCard extends StatelessWidget {

  final Order order;
  ShippingInfosCard(this.order);

  @override
  Widget build(BuildContext context) {
    double totalCost = 0;
    order.details.forEach((detail) {totalCost += detail.cost;});
    return Container(
      height: 274,
      width: MediaQuery.of(context).size.width - 24,
      child: ListView(
        children: <Widget>[
          Divider(height: 1, color: Colors.black54),
          Container(
            color: Color(0xFFbdbdbd),
            child: ListTile(
              title: Text('ORDER N°: ${order.id}', style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Text('${order.creationDate}', style: TextStyle(color: Color(0xFF757575))),
            ),
          ),
          Divider(height: 1, color: Colors.black54),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('${order.details.length} items', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text('$totalCost FCFA', style: TextStyle(color: Color(0xFF757575))),
                  ],
                ),
                Spacer(),
                Container(width: 4,height: 40, color: Colors.black54),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Payment', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text('${order.paymentType}', style: TextStyle(color: Color(0xFF757575))),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.black54),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Shipping', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text('${SellamAppSession.of(context).user.name}', style: TextStyle(color: Color(0xFF757575))),
                    SizedBox(height: 4),
                    Text('${order.info.address}', style: TextStyle(color: Color(0xFF757575))),
                    SizedBox(height: 4),
                    Text('${SellamAppSession.of(context).user.phone}', style: TextStyle(color: Color(0xFF757575))),
                  ],
                ),
                Spacer(),
                Image.asset('assets/${(order.paymentType == PaymentType.AT_DELIVERY) ? 'deliv.jpg' : 'momo.jpg'}', width: 100)
              ],
            ),
          ),
        ],
      ),
    );
  }
}