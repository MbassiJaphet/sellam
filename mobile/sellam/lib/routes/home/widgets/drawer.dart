import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
        child: ListView(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).padding.top),
            Center(child: Text('Sellam', style: TextStyle(color: Color(0xFFff6f00), fontSize: 32, fontWeight: FontWeight.bold),)),
            SizedBox(height: 35),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Place an ad'),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('My space'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
          ],
        ),
      ),
    );
  }
}