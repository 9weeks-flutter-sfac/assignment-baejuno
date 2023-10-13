// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment1/models/coincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final coincontroller = Get.put(CoinController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("상점",style: TextStyle(fontSize: 20),),
            Obx( ()=>Text("현재 보유한 코인 : ${coincontroller.count.value}")),
            TextButton(
              onPressed: () {
                coincontroller.reSet();
              }, 
              child: Text("코인 초기화"))
          ],
        ),
      ),
    );
  }
}