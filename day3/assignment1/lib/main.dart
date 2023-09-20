// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment1/DrinkTileWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          centerTitle: false,
          leading: Icon(Icons.navigate_before),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(Icons.search, color: Colors.black,),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text('new'.toUpperCase(), 
              style: 
              TextStyle(
                fontSize: 32, 
                fontWeight: 
                FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),    
              DrinkTileWidget(drinkName:'골든 미모사 그린티', enName: 'Golden Mimosa Green Tea', price: 6100, imgUrl: 'assets/images/item_drink1.jpeg',),
              DrinkTileWidget(drinkName:'블랙 햅쌀 고봉 라떼', enName: 'Black Rice Latte', price: 6100, imgUrl: 'assets/images/item_drink2.jpeg',),
              DrinkTileWidget(drinkName:'아이스 블랙 햅쌀 고봉 라떼', enName: 'Iced Black Rice Latte', price: 6100, imgUrl: 'assets/images/item_drink3.jpeg',),
              DrinkTileWidget(drinkName:'스타벅스 튜메릭 라떼', enName: 'Starbucks Turmeric Latte', price: 6100, imgUrl: 'assets/images/item_drink4.jpeg',),
              DrinkTileWidget(drinkName:'아이스 스타벅스 튜메릭 라떼', enName: 'Iced Starbucks Turmeric Latte', price: 6100, imgUrl: 'assets/images/item_drink5.jpeg',),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              icon: 
              Icon(Icons.home,),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: 
              Icon(Icons.payment,),
              label: 'Pay'
            ),
            BottomNavigationBarItem(
              icon: 
              Icon(Icons.coffee,),
              label: 'Order'
            ),
            BottomNavigationBarItem(
              icon: 
              Icon(Icons.shop,),
              label: 'Shop'
            ),
            BottomNavigationBarItem(
              icon: 
              Icon(Icons.more_horiz,),
              label: 'Other'
            ),
          ]
        ),
        bottomSheet: Container(
          height: 64,
          color: Colors.black87,
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('주문할 매장을 선택해 주세요.', style: TextStyle(color: Colors.white),),
                Icon(Icons.expand_more, color: Colors.white,)              
              ]
            ),
          ),
        ),
      ),
    );
  }
}


