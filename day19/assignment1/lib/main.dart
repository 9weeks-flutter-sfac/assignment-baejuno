import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/join_controller.dart';
import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/view/join_page.dart';
import 'package:assignment1/view/login_page.dart';
import 'package:assignment1/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      theme: ThemeData.dark(),
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => LoginController());
        Get.lazyPut(() => JoinController());
      }),
      getPages: [
        GetPage(name: LoginPage.route, page: () => const LoginPage()),
        GetPage(name: JoinPage.route, page: () => const JoinPage()),
        GetPage(name: MainPage.route, page: () => const MainPage())
      ],
      home: LoginPage(),
    );
  }
}