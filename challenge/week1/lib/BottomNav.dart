import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade900,
      currentIndex: 2,
      fixedColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈' 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '둘러보기'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          label: '보관함'
        ),
      ],
      unselectedItemColor: Colors.grey,
    );
  }
}
