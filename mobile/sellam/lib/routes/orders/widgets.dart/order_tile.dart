import 'package:flutter/material.dart';

import 'package:sellam/models/models.dart';
import 'package:sellam/routes/routes.dart';

class OrderTile extends StatelessWidget {

  final Order order;
  OrderTile(this.order);

  @override
  Widget build(BuildContext context) {
    double totalCost = 0;
    order.details.forEach((detail) {totalCost += detail.cost;});
    return Container(
        height: 73,
        child: Column(
        children: <Widget>[
          ListTile(
            onTap: () {Navigator.pushNamed(context, OrderDetailsPage.route, arguments: this.order);},
            title: Text('${this.order.id}', style: TextStyle(fontSize: 18, fontFamily: 'Roboto')),
            subtitle: Text('${this.order.creationDate}', style: TextStyle(fontSize: 12, fontFamily: 'Roboto', color: Color(0xFF757575))),
            trailing: Container(
              width: 153,
              height: 53,
              child: Row(
                children: <Widget>[
                  (order.paymentType == PaymentType.AT_DELIVERY) ?
                    Image.asset('assets/deliv.jpg', height: 25, width: 60, fit: BoxFit.fill) :
                    Image.asset('assets/momo.jpg', height: 25, width: 60, fit: BoxFit.fill),
                    SizedBox(width: 4),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '$totalCost',
                            style: TextStyle(color: Color(0xFFff6f00)),
                          ),
                          TextSpan(
                            text: ' FCFA',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)
                          ),
                        ],
                      ),
                    ),
                ],
              )
            ),
          ),
          Divider(height: 1),
        ],
      ),
    );
  }
}