// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});
  static const String route = '/main';

  @override
  Widget build(BuildContext context) {
    var user = Get.find<AuthControoler>().user!;
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.curPage.value,
          onTap: controller.onPageTapped,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My')
        ]
          ),
      ),
      body: SafeArea(
        child: PageView(
          controller: controller.pageController,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${user.username}님 안녕하세요',style: TextStyle(fontSize: 32),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    // backgroundImage: NetworkImage(),
                  ),
                  title: Text(user.username),
                  subtitle: Text(user.name),
                ),
                ListTile(
                  title: Text('로그아웃하기'),
                  leading: Icon(Icons.logout),
                  onTap: () => controller.logout(),
                )
                
              ],
            ),
          ],
        ),
      )
    );
  }
}