import 'package:flutter/material.dart';

import 'package:sellam/app.dart';
import 'package:sellam/models/product.dart';
import 'package:sellam/widgets/drawer.dart';
import 'package:sellam/routes/home/widgets/product_tile.dart';
import 'package:sellam/routes/home/widgets/products_listview_header.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  final String title = 'Home';
  static final String route = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RouteAware {

  List<Widget> PRODCUCTS_TILES;

  @override
  void initState() {
    super.initState();
    this.PRODCUCTS_TILES = getProductsTiles();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
  @override
  void didPopNext() {
    setState(() {
      this.PRODCUCTS_TILES = getProductsTiles();
    });
  }

  @override
  void didPop() {
    setState(() {
      this.PRODCUCTS_TILES = getProductsTiles();
    });
  }

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
              IconButton(icon: Icon(Icons.refresh), onPressed: () {didPopNext();},)
            ],
          ),
          drawer: AppDrawer(HomePage.route, AppDrawer.builder(context)),
          body: ListView(
            padding: EdgeInsets.all(8),
            children: this.PRODCUCTS_TILES,
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
