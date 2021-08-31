import 'package:flutter/material.dart';

class PageDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Text(
          'Room Bhetau helps you to find your new home!!!',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ));
  }
}
