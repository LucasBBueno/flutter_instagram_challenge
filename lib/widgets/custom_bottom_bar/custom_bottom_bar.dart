import 'package:flutter/material.dart';

class CustomBottomBar extends BottomNavigationBar {
  CustomBottomBar({
    super.key,
  }) : super(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home_filled,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.add_box_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.movie_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SizedBox(
                height: 32,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://portalpopline.com.br/wp-content/uploads/2023/04/super-mario-thumb.png'),
                ),
              ),
            ),
          ],
        );
}
