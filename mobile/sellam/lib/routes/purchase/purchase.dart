import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sellam/models/product.dart';

class PurchasePage extends StatefulWidget {
final Product product;
 final Key key;

  PurchasePage({this.key, this.product}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {

  int _currentTabIndex = 0;

  ScrollController _scrollController;
  bool _visible = true;

  @override

  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() => _visible = false);
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() => _visible = true);
      }
    });
  }

  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;
    //print(product.name);
    final _kTabPages = <Widget>[
      Delivery(),
      MTN(),
    ];
    final _kBottomNavBarItems = <BottomNavigationBarItem> [
      BottomNavigationBarItem(icon: Icon(Icons.monetization_on), title: Text('Delivery Pay')),
      BottomNavigationBarItem(icon: Icon(Icons.phonelink_ring), title: Text('Mobile Money')),
    ];
    assert(_kTabPages.length == _kBottomNavBarItems.length);
    final bottomNavBar = new Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.purple,

      ),

      child: Theme(

        data: Theme.of(context)
            .copyWith(),
        child: !_visible
            ? SizedBox():BottomNavigationBar(
          items: _kBottomNavBarItems,
          currentIndex: _currentTabIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState((){
              _currentTabIndex = index;
            });
          },
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){ Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios,),),
        elevation: 1.3,
        title: Text('Purchase Order', style: TextStyle(color: Color(0xFFff6f00), fontWeight: FontWeight.bold)),

      ),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: Stack(children: <Widget>[bottomNavBar]),
    );
  }
}

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: Form(

              child: ListView(
                children: <Widget>[
                  SizedBox(height:50.0),
                  Image.asset(imgDelivery, width: 70.0, height:70.0),
                  SizedBox(height:20.0),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                    child: Material(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            icon: Icon(Icons.person_pin
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
                            hintText: "Phone number",
                            icon: Icon(Icons.phone),
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
                            hintText: "Delivery address",
                            icon: Icon(Icons.description),
                          ),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height:15.0),

                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                    child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color:  Color(0xFFff6f00),
                        elevation: 0.0,
                        child: MaterialButton(
                          onPressed: () {
                            showDialog(context: context,
                              builder: (context){
                                return new AlertDialog(
                                  title: new Text("Success"),
                                  content: new Text("Order succesfully initiated, \n Go to Home page"),
                                  actions: <Widget>[
                                    new MaterialButton(onPressed: (){
                                      Navigator.pushNamed(context, '/home');
                                    },
                                        child: new Text("Ok"))
                                  ],
                                );
                              },
                            );
                          },
                          minWidth: MediaQuery.of(context).size.width,
                          child: Text(
                            "Confirm Order",
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
    );
  }
}

class MTN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: Form(

              child: ListView(
                children: <Widget>[
                  SizedBox(height:50.0),
                  Image.asset(imgMTN, width: 70.0, height:70.0),
                  SizedBox(height:20.0),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 8.0, 16.0, 8.0),
                    child: Material(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            icon: Icon(Icons.person_pin
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
                            hintText: "MTN MoMo number",
                            icon: Icon(Icons.phone),
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
                            hintText: "Delivery address",
                            icon: Icon(Icons.description),
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
                            "Make Payment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color:  Color(0xFFff6f00),
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
                        color:  Color(0xFFff6f00),
                        elevation: 0.0,
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: MediaQuery.of(context).size.width,
                          child: Text(
                            "Confirm Order",
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
    );
  }
}




final imgDelivery = 'assets/deliv.png';
final imgMTN = 'assets/mtn.jpg';
final imgVisa = 'images/visa1.png';