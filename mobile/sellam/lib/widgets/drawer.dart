import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import 'package:sellam/app.dart';
import 'package:sellam/routes/routes.dart';

class AppDrawer extends InheritedWidget {

  final String route;
  final Widget child;
  AppDrawer (this.route, this.child) : super(child : child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static AppDrawer of(BuildContext context) => 
    context.inheritFromWidgetOfExactType(AppDrawer);

  static List<Widget> header(context){
    return <Widget>[
              SizedBox(height: MediaQuery.of(context).padding.top),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Sellam', style: TextStyle(color: Color(0xFFff6f00), fontSize: 32, fontWeight: FontWeight.bold)),
                        (SellamAppSession.of(context).userLoggedIn) ?
                          Text(SellamAppSession.of(context).user.mail, style: TextStyle(color: Color(0xFF757575), fontFamily: 'Roboto', fontSize: 14)) :
                          SizedBox(),
                      ],
                    ),
                    Spacer(),
                    (SellamAppSession.of(context).userLoggedIn) ?
                    SignOutButton() :
                    SignInButton()
                  ],
                ),
              ),
              SizedBox(height: 24)
    ];
  }

  static List<Widget> items(context){
    return <Widget>[
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Primary', style: TextStyle(fontFamily: 'Roboto')),
              ),
              (SellamAppSession.of(context).userLoggedIn) ? AppDrawerItem('Profile', icon : Icon(OMIcons.person), route : ProfilePage.route) : SizedBox(),
              AppDrawerItem('Home', icon : Icon(OMIcons.home), route : HomePage.route),
              (SellamAppSession.of(context).userLoggedIn) ? AppDrawerItem('Place an ad', icon : Icon(OMIcons.addBox), route : SellPage.route) : SizedBox(),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('My space', style: TextStyle(fontFamily: 'Roboto')),
              ),
              (SellamAppSession.of(context).userLoggedIn) ? AppDrawerItem('Orders', icon : Icon(OMIcons.redeem), route : OrdersPage.route) : SizedBox(),
              (SellamAppSession.of(context).userLoggedIn) ? AppDrawerItem('Favorites', icon : Icon(Icons.favorite_border), route : FavoriteProducts.route) : SizedBox(),
              AppDrawerItem('Notifications', icon : Icon(OMIcons.notifications), route : NotificationsPage.route),
              Divider(),
              AppDrawerItem('Help', icon : Icon(Icons.help), route : HelpPage.route),
              AppDrawerItem('About us', icon : Icon(Icons.language), route : AboutPage.route),
    ];
  }

  static Widget builder(BuildContext context) {
    List<Widget> drawerElements = <Widget>[];
    drawerElements.addAll(header(context));
    drawerElements.addAll(items(context));
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Raleway',
      ),
          child: Material(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
          child: ListView( children: drawerElements),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xFFff6f00),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))
      ),
      onTap: () {
        Navigator.pushNamed(context, SignInPage.route);
      },
    );
  }
}

class SignOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 3, color: Color(0xFFff6f00))
        ),
        child: Text('Sign out', style: TextStyle(color: Color(0xFFff6f00), fontSize: 16, fontWeight: FontWeight.bold),
        )
      ),
      onTap: () {
        SellamAppSession.of(context).signOut(context);
      },
    );
  }
}

class AppDrawerItem extends StatelessWidget {

  final String label;
  final String route;
  final Widget icon;

  const AppDrawerItem(this.label,{this.icon, this.route});

  @override
  Widget build(BuildContext context) {
    final bool selected = (AppDrawer.of(context).route == this.route) ? true : false;
    return InkWell(
          child: (selected) ?
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFFffb74d).withOpacity(0.1),
          ),
          child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 8),
          leading: this.icon,
          title: Text(this.label, style: TextStyle(color: Color(0xFFff8f00) ,fontWeight: FontWeight.w600)),
          onTap: () {Navigator.pop(context);},
          )
        ) :
        ListTile(
          leading: this.icon,
          title: Text(this.label, style: TextStyle(color: Color(0xFF616161) ,fontWeight: FontWeight.w600)),
          onTap: () {Navigator.popAndPushNamed(context, this.route);},
        ),
    );
  }
}