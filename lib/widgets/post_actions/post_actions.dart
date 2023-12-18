import 'package:flutter/material.dart';

class PostActions extends StatelessWidget {
  const PostActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.send_outlined,
                color: Colors.white,
              )
            ],
          ),
          Icon(Icons.bookmark_border, color: Colors.white,),
        ],
      ),
      color: Colors.black,
    );
  }
}
