import 'package:flutter/material.dart';

import 'package:sellam/models/product.dart';
import 'package:sellam/routes/home/widgets/drawer.dart';
import 'package:sellam/routes/home/widgets/product_tile.dart';
import 'package:sellam/routes/home/widgets/products_listview_header.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  final String title = 'Sellam';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color(0xFFf5f5f5),
          appBar: AppBar(
            title: Text(widget.title, style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
            centerTitle: true,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {},),
              IconButton(icon: Icon(Icons.refresh), onPressed: () {},)
            ],
          ),
          drawer: AppDrawer(),
          body: ListView(
            padding: EdgeInsets.all(8),
            children: getProductsTiles(),
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

List<Widget> getProductsTiles() {
  List<Widget> widgets = [ProductsListViewHeader()];
  for(int i = 0; i <= 2; i++){
    widgets.addAll(PRODUCTS.map((product) {
      return ProductTile(key: UniqueKey(), product: product);
    }).toList());
  }
  return widgets;
}
