import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import 'package:sellam/app.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Raleway',
      ),
          child: Material(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
          child: ListView(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).padding.top),
              Center(child: Text('Sellam', style: TextStyle(color: Color(0xFFff6f00), fontSize: 32, fontWeight: FontWeight.bold),)),
              SizedBox(height: 24),
              Divider(),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFffb74d).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.all(8),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  leading: Icon(OMIcons.home),
                  title: Text('Home', style: TextStyle(color: Color(0xFFff8f00) ,fontWeight: FontWeight.w600)),
                  onTap: () {Navigator.pop(context);},
                ),
              ),
              ListTile(
                leading: Icon(OMIcons.addBox),
                title: Text('Place an ad', style: TextStyle(color: Color(0xFF616161) ,fontWeight: FontWeight.w600)),
                onTap: () {},
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('My space'),
              ),
              ListTile(
                leading: Icon(OMIcons.redeem),
                title: Text('Orders', style: TextStyle(color: Color(0xFF616161) ,fontWeight: FontWeight.w600)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('Favorites', style: TextStyle(color: Color(0xFF616161) ,fontWeight: FontWeight.w600)),
                onTap: () {Navigator.popAndPushNamed(context, '/favorites');}
              ),
              ListTile(
                leading: Icon(OMIcons.notifications),
                title: Text('Notifications', style: TextStyle(color: Color(0xFF616161) ,fontWeight: FontWeight.w600)),
                onTap: () {Navigator.popAndPushNamed(context, '/notifications');},
              ),
              Divider(),
              (SellamAppSession.of(context).userLoggedIn) ?
              ListTile(
                title: Text('Sign out', style: TextStyle(color: Color(0xFF9e9e9e) ,fontWeight: FontWeight.w600)),
                onTap: () {Navigator.pop(context);SellamAppSession.of(context).userLoggedIn = false;},
              ) :
              ListTile(
                title: Text('Sign in', style: TextStyle(color: Color(0xFFff6f00) ,fontWeight: FontWeight.w600)),
                onTap: () {Navigator.pop(context);SellamAppSession.of(context).userLoggedIn = true;},
              ),
            ],
          ),
        ),
      ),
    );
  }
}