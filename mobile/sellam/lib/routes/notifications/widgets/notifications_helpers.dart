import 'package:flutter/material.dart';

class NoNotificationsPlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 12),
        Icon(Icons.notifications_off, size: 96, color: Color(0xFF757575)),
        SizedBox(height: 8),
        Text('You do no not have any notifications!', style: TextStyle(color: Color(0xFF616161)))
      ],
    );
  }
}