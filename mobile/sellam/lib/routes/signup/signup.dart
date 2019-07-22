import 'package:flutter/material.dart';

import 'package:sellam/app.dart';

class SignUpPage extends StatefulWidget {

  final String title = 'Sign Up';
  static final String route = '/signup';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/bkgb.jpg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.85),
            width: double.infinity,
            height: double.infinity,
          ),
          
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Center(
                child: Form(

                    child: ListView(
                      children: <Widget>[

                        Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Container(
                alignment: Alignment.topCenter,
                child: new CircleAvatar(
                    maxRadius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.shopping_cart, color: Colors.deepOrange, size: 20.0,)
                )

            ),
          ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                          child: Container(
                              alignment: Alignment.topCenter,
                              child: Text("Sign Up",
                                  style: TextStyle(
                                      color:Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Century Gothic'

                                  ))
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.4),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(

                                decoration: InputDecoration(
                                  hintText: "UserID",
                                  icon: Icon(Icons.person),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    Pattern pattern =
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    RegExp regex = new RegExp(pattern);
                                    if (!regex.hasMatch(value))
                                      return 'Please make sure your email address is valid';
                                    else
                                      return null;
                                  }
                                },
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.4),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(

                                decoration: InputDecoration(
                                  hintText: "eMail",
                                  icon: Icon(Icons.mail),
                                ),
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.4),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(

                                decoration: InputDecoration(
                                  hintText: "Phone number",
                                  icon: Icon(Icons.phone_iphone),
                                ),
                              ),
                            ),
                          ),
                        ),



                        Padding(
                          padding:
                          const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.4),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  icon: Icon(Icons.lock_outline),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "The password field cannot be empty";
                                  } else if (value.length < 6) {
                                    return "the password has to be at least 6 characters long";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding:
                          const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                          child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFff6f00),
                              elevation: 0.0,
                              child: MaterialButton(
                                onPressed: () {Navigator.pop(context);SellamAppSession.of(context).signIn(context);},
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Register",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              )),
                        ),

//                          Expanded(child: Container()),

                      ],
                    )),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

