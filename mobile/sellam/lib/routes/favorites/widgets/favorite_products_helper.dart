import 'package:flutter/material.dart';

class NoFavoritePlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 12),
        Icon(Icons.favorite_border, size: 96, color: Color(0xFF757575)),
        SizedBox(height: 8),
        Text('You do no not have any favorite!', style: TextStyle(color: Color(0xFF616161)))
      ],
    );
  }
}