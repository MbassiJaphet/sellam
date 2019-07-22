import 'package:flutter/material.dart';

import 'package:sellam/app.dart';
import 'package:sellam/models/models.dart';
import 'package:sellam/routes/favorites/widgets/favorite_products_helper.dart';
import 'package:sellam/routes/favorites/widgets/favorite_products_tiles.dart';

class FavoriteProducts extends StatefulWidget {

  final String title = 'Favorites';
  static final String route = '/favorites';
  @override
  _FavoriteProductsState createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Theme(
          data: ThemeData(
            primarySwatch: Colors.orange,
            fontFamily: 'Raleway',
            appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 1,
            )
          ),
          child: Scaffold(
            backgroundColor: Color(0xFFf5f5f5),
            appBar: AppBar(
              centerTitle: true,
              title: Text(widget.title, style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
              leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Color(0xFFff6f00)), onPressed: (){Navigator.pop(context);}),
            ),
            body: ListView(
              padding: EdgeInsets.all(8),
              children: (USER.favorites.isEmpty) ? <Widget>[NoFavoritePlaceHolder()] : getFavoriteProductsTiles(context),
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

  List<Widget> getFavoriteProductsTiles(BuildContext context) {
    List<int> favoriteProductsIdList = SellamAppSession.of(context).user.favorites.map((product) {return product.id;}).toList();
    List<FavoriteProductTile> favoriteProductsList = [];
    PRODUCTS.forEach((product) {
      if(favoriteProductsIdList.contains(product.id)){
        favoriteProductsList.add(FavoriteProductTile(product));
      }
    });
    return favoriteProductsList;
  }
}
