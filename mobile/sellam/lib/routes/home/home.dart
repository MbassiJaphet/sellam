import 'package:flutter/material.dart';

import 'package:sellam/routes/home/widgets/drawer.dart';
import 'package:sellam/routes/home/widgets/product_tile.dart';
import 'package:sellam/models/product.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Theme(
          data: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.white
            )
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title, style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
              centerTitle: true,
              leading: IconButton(icon: Icon(Icons.menu, color: Color(0xFFff6f00), size: 36), onPressed: () {/*Scaffold.of(context).openDrawer();*/},),
              actions: <Widget>[IconButton(icon: Icon(Icons.search, color: Color(0xFFff6f00), size: 30), onPressed: () {},)],
            ),
            drawer: AppDrawer(),
            body: ListView(
              children: getProductsTiles(),
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

List<ProductTile> getProductsTiles() {
  return PRODUCTS.map((product) {
    return ProductTile(product);
  }).toList();
}
