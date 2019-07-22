import 'package:flutter/material.dart';

import 'package:sellam/models/models.dart';

class AboutPage extends StatefulWidget {

  final String title = 'About';
  static final String route = '/about';
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
              centerTitle: true,
              title: Text(widget.title, style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
              leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Color(0xFFff6f00)), onPressed: (){Navigator.pop(context);}),
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
