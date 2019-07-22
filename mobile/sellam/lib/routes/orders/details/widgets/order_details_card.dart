import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sellam/models/models.dart';
import 'package:sellam/routes/orders/details/widgets/shipping_infos_card.dart';

class OrderDetailCard extends StatelessWidget {

  final OrderDetail detail;
  OrderDetailCard(this.detail);

  @override
  Widget build(BuildContext context) {
    // final Order order = ModalRoute.of(context).settings.arguments;
    // List<Widget> elements = <Widget>[];
    // elements.add(ShippingInfosCard(this.order));
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width - 24,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Divider(height: 1, color: Colors.black54),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFeeeeee),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Image.asset(this.detail.product.picture),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8),
                    Text('${detail.product.category.name}', style: TextStyle(color: Color(0xFF757575))),
                    SizedBox(height: 8),
                    Text('${detail.product.name}', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                    Text('${detail.product.price} FCFA', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Text('Quantity: ', style: TextStyle(color: Color(0xFF757575))),
                        Text('${detail.quantity}', style: TextStyle(fontWeight: FontWeight.w400)),
                        SizedBox(width: 16),
                        Text('Total: ', style: TextStyle(color: Color(0xFF757575))),
                        Text('${detail.cost} FCFA', style: TextStyle(fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}