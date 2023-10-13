// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:assignment1/models/coincontroller.dart';
import 'package:assignment1/pages/shop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final coincontroller = Get.put(CoinController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx( ()=> Text("Current Coins : ${coincontroller.count.value}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 24,
            ),
            Icon(
              FontAwesomeIcons.bitcoin,
              size: 96.0,
              color: Colors.yellow.shade700,
            ),
            TextButton(
              onPressed: () {
                Get.to(ShopPage());
              }, 
              child: Text("상점으로 이동하기",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}