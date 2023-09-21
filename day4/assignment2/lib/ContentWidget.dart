// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:assignment2/FoodWidget.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({
    Key? key,
    required this.initialFoodList,
  }) : super(key: key);

  final List<String> initialFoodList;

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  
  void addToFoodList(String food) {
    setState(() {
      foodList.add(food);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("주문 리스트",
        style: 
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          child: Text(foodList.toString()),
      
        ),
        Text("음식",
        style: 
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            children: [
              FoodWidget(food: '맥주', imgUrl: 'assets/images/option_beer.png',addToFoodList : addToFoodList),
              FoodWidget(food: '떡볶이', imgUrl: 'assets/images/option_bokki.png',addToFoodList : addToFoodList),
              FoodWidget(food: '김밥', imgUrl: 'assets/images/option_kimbap.png',addToFoodList : addToFoodList),
              FoodWidget(food: '오므라이스', imgUrl: 'assets/images/option_omurice.png',addToFoodList : addToFoodList),
              FoodWidget(food: '커틀렛', imgUrl: 'assets/images/option_pork_cutlets.png',addToFoodList : addToFoodList),
              FoodWidget(food: '라면', imgUrl: 'assets/images/option_ramen.png',addToFoodList : addToFoodList),
              FoodWidget(food: '우동', imgUrl: 'assets/images/option_udon.png',addToFoodList : addToFoodList),
            ],
          ),
        )
      ],
    );
  }
}

