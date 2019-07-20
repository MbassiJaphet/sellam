import 'package:flutter/material.dart';
import 'package:sellam/models/product.dart';

class DescriptionPage extends StatefulWidget {

  @override
  _DescriptionPageState createState() => _DescriptionPageState();

}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      appBar: new AppBar(
        leading:new IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        elevation: 0.1,
        title: Text(product.name,  style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
        centerTitle: true,
       /*actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
        ],*/
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 300.0,
              child: GridTile(
                  child: new Container(
                    color: Colors.white,
                    child: Image.asset(product.picture),
                  ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(product.name, style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    title: new Row(
                      children: <Widget>[
                        /*
                        Expanded(
                          child: new Text("${product.price} FCFA",
                            style: new TextStyle(color: Colors.blueGrey, decoration: TextDecoration.lineThrough),)
                        ),
                        */
                        Expanded(
                            child: new Text("${product.price} FCFA", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.deepOrange),)
                        ),
                      ]
                    )
                  ),
                ),
              ),

            ),

            // ======= first button ========

            new Row(
              children: <Widget>[

                // ======= size button =======

                new Expanded(child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                           title: new Text("Cart updated"),
                           content: new Text("Book added to cart"),
                           actions: <Widget>[
                             new MaterialButton(onPressed: (){
                               Navigator.of(context).pop(context);
                             },
                             child: new Text("Close"))
                           ],
                        );
                      },
                      );
                    },
                   color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size")
                      ),

                      Expanded(
                        child: new Icon(Icons.arrow_drop_down)
                      )
                    ],
                  )
                )),
                new Expanded(child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                  child: new Text("Close"))
                            ],
                          );
                        },
                      );

                },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text("Color")
                        ),

                        Expanded(
                            child: new Icon(Icons.arrow_drop_down)
                        )
                      ],
                    )
                )),
                new Expanded(child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                  child: new Text("Close"))
                            ],
                          );
                        },
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text("Qty")
                        ),

                        Expanded(
                            child: new Icon(Icons.arrow_drop_down)
                        )
                      ],
                    )
                ))
              ],
            ),

            // =========== Second button ============

            new Row(
              children: <Widget>[

                // ======= size button =======

                new Expanded(
                    child: MaterialButton(
                        onPressed: (){},
                        color: Colors.deepOrange,
                        textColor: Colors.white,
                        elevation: 0.2,
                    child: new Text("Buy now")
                )
                ),

                new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.deepOrange, onPressed: (){}),
                new IconButton(icon: Icon(Icons.favorite_border), color: Colors.deepOrange, onPressed: (){}),

              ],
            ),

            Divider(color: Colors.deepOrange),
            new ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Product details"),
              ),
              subtitle: new Text(product.description),

            ),

            Divider(),

            new Row(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product name:", style: TextStyle(color: Colors.grey)),
                ),
                new Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(product.name),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: new Text("Posted on:", style: TextStyle(color: Colors.grey))
                ),
                new Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(product.publicationDate),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: new Row(
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                      child: new Text("category:", style: TextStyle(color: Colors.grey))
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                    child: new Text(product.category.name),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
