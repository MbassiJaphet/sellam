import 'package:flutter/material.dart';

import 'package:sellam/models/models.dart';
import 'package:sellam/routes/orders/details/widgets/order_details_card.dart';
import 'package:sellam/routes/orders/details/widgets/shipping_infos_card.dart';
import 'package:sellam/widgets/widgets.dart';

class OrderDetailsPage extends StatefulWidget {

  final String title = 'Order Details';
  static final String route = '/orders/details';
  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Order order = ModalRoute.of(context).settings.arguments;
    List<Widget> elements = <Widget>[];
    elements.add(ShippingInfosCard(order));
    order.details.forEach((detail) {elements.add(OrderDetailCard(detail));});
    return Stack(
      children: <Widget>[
        Theme(
          data: ThemeData(
            primarySwatch: Colors.orange,
            appBarTheme: AppBarTheme(
              elevation: 1,
              color: Colors.white,
              iconTheme: IconThemeData(
                size: 24,
                color: Color(0xFFff6f00)
              ),
              actionsIconTheme: IconThemeData(
                size: 24,
                color: Color(0xFFff6f00)
              ),
            )
          ),
          child: Scaffold(
            drawer: AppDrawer(OrderDetailsPage.route, AppDrawer.builder(context)),
            appBar: AppBar(
              centerTitle: true,
              leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
              title: Text('${this.widget.title}', style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
            ),
            body: ListView(
              children: elements,
            ),
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