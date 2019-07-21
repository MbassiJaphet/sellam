import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sellam/app.dart';
import 'package:sellam/models/product.dart';

class DescriptionPage extends StatefulWidget {
  final Product product;
    final Key key;

  DescriptionPage({this.key, this.product}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();

}

class _DescriptionPageState extends State<DescriptionPage> {

 _DescriptionPageState();

  int dropdownValue = 1;
  Widget favoriteIcon;
  @override

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      appBar: new AppBar(
        leading:new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
        elevation: 0.1,
        title: Text(product.name,  style: TextStyle(color: Color(0xFFff6f00), fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
       /*actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),
        ],*/
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 180.0,
              
              child: GridTile(
                  child: new Container(
                    color: Colors.white,
                    child: Image.asset(product.picture),
                  ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text("Product Price :", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
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

            Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                  child: new Row(
                  children: <Widget>[

                    // ======= size button =======

                    new Expanded(child: Container(
                      child: Text("Choose quantity within available:", style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                        )),
                    
                    Padding(
                     padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                     child: DropdownButton<int>(
                       elevation: 0,
                       iconEnabledColor: Color(0xFFff6f00),
                       iconDisabledColor: Color(0xFFff6f00),
                      value: dropdownValue,
                      onChanged: (int newValue) {
                         setState(() {
                             dropdownValue = newValue;
                            });
                       },
                       items: <int>[1, 2, 3, 4, 5]
                       .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0, right: 10.0),
                          child: Text("$value", style: TextStyle(color: Color(0xFFff6f00), fontWeight: FontWeight.bold),),
                        )
                  );
                  })
                  .toList(),
                  ),
                   ),
                  ],
              ),
                ),
            ),

            // =========== Second button ============

            new Row(
              children: <Widget>[

                // ======= size button =======

                new Expanded(
                    child: MaterialButton(
                        onPressed: (){Navigator.pushNamed(context, '/purchase', arguments: widget.product);},
                        color: Color(0xFFff6f00),
                        textColor: Colors.white,
                        elevation: 0.2,
                    child: new Text("Buy now")
                )
                ),
               

  
              
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
