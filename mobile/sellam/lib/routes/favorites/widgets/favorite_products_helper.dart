import 'package:flutter/material.dart';

class NoFavoritePlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 12),
        Text('No Favorites!', style: TextStyle(fontSize: 24)),
        SizedBox(height: 12),
        Icon(Icons.favorite, size: 132, color: Color(0xFF757575).withOpacity(0.5)),
        SizedBox(height: 8),
        Text('You do no not have any favorite!', style: TextStyle(color: Color(0xFF616161)))
      ],
    );
  }
}