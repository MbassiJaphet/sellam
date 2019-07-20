import 'package:flutter/material.dart';

import 'package:sellam/routes/notifications/widgets/notifications_helpers.dart';

class NotificationsPage extends StatefulWidget {

  final String title = 'Notifications';
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
              title: Text(widget.title, style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
              centerTitle: true,
              leading: IconButton(icon: Icon(Icons.arrow_back, color: Color(0xFFff6f00), size: 24), onPressed: () {Navigator.pop(context);},),
            ),
            body: ListView(
              padding: EdgeInsets.all(8),
              children: <Widget>[NoNotificationsPlaceHolder()],
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
}