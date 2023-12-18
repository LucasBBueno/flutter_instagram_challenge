import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
  }) : super(
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'Billabong', fontSize: 40, color: Colors.white),
          ),
          actions: const [
            Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.chat,
                color: Colors.white,
              ),
            )
          ],
        );
}
