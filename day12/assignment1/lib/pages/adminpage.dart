import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('관리자페이지'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('메뉴 추가'),
          ),
          ListTile(
            title: Text('메뉴 수정'),
          ),
          ListTile(
            title: Text('메뉴 삭제'),
          ),
        ],
      ),
    );
  }
}