import 'package:flutter/material.dart';
import 'package:sellam/routes/orders/widgets.dart/order_tile.dart';

import 'package:sellam/widgets/widgets.dart';
import 'package:sellam/models/models.dart';


class OrdersPage extends StatefulWidget {

  final String title = 'Orders';
  static final String route = '/orders';

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          drawer: AppDrawer(OrdersPage.route, AppDrawer.builder(context)),
          appBar: AppBar(
            centerTitle: true,
            leading:new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
            title: Text(widget.title, style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
          ),
          body: ListView(
            children: ORDERS.map((order) {return OrderTile(order);}).toList(),
          ),
        ),
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Color(0xFFff6f00),
        )
      ],
    );
  }
}