import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:sellam/app.dart';
import 'package:sellam/models/product.dart';

class FavoriteProductTile extends StatefulWidget {
  final Product product;

  FavoriteProductTile(this.product);

  @override
  _FavoriteProductTileState createState() => _FavoriteProductTileState();
}

class _FavoriteProductTileState extends State<FavoriteProductTile> {
  Widget favoriteIcon;

  _FavoriteProductTileState();

  @override
  void initState() {
    super.initState();
    favoriteIcon =  Icon(Icons.favorite, color: Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 0,
        color: Colors.white70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 108,
              height: 108,
              decoration: BoxDecoration(
                color: Color(0xFFeeeeee),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: this.widget.product.picture
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.widget.product.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '${this.widget.product.price}',
                              style: TextStyle(color: Color(0xFFff6f00)),
                            ),
                            TextSpan(
                              text: ' FCFA',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    SizedBox(height:12),
                    Text(this.widget.product.category.name),
                    Text('Molyko, Buea', style: TextStyle(color: Color(0xFF757575))),
                    Text('28-07-2079', style: TextStyle(fontWeight: FontWeight.w300, fontFamily: 'Roboto'))
                  ],
                ),
              ),
              Spacer(),
              IconButton(icon: favoriteIcon, onPressed: () {removeFromFavorites(context);}),
          ],
        ),
      ),
    );
  }

  void removeFromFavorites(BuildContext context){
    if(! SellamAppSession.of(context).user.favorites.map((product) {return product.id;}).toList().contains(widget.product.id)){
      setState(() {
        SellamAppSession.of(context).user.favorites.add(widget.product);
        favoriteIcon =  Icon(Icons.favorite, color: Colors.red);
      });
    }else{
      setState(() {
        SellamAppSession.of(context).user.favorites.remove(widget.product);
        favoriteIcon =  Icon(Icons.favorite_border, color: Color(0xFF616161));
      });
    }
  }
}