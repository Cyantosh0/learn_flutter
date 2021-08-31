import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Room Bhetau',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpeg'))
          ],
        ),
        color: Colors.cyan,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
