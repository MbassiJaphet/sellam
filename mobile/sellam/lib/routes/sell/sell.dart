import 'package:flutter/material.dart';


class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 1.1,
        title: Text('New Product', style: TextStyle(color: Color(0xFFff6f00), fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Center(
            child: Form(

                child: ListView(
                  children: <Widget>[
                    SizedBox(height:10.0),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                      child: Material(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              icon: Icon(Icons.title),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                      child: Material(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Category",
                              icon: Icon(Icons.category
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                      child: Material(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Your Location",
                              icon: Icon(Icons.location_on),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                      child: Material(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Product description",
                              icon: Icon(Icons.description),
                            ),
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                      child: Material(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Units available",
                              icon: Icon(Icons.menu),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                      child: Material(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Price",
                              icon: Icon(Icons.monetization_on),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:10.0),
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          elevation: 3.0,
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Upload picture",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFFff6f00),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          )),
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFFff6f00),
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Add Product",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          )),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
