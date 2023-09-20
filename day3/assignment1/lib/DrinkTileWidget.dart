// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrinkTileWidget extends StatelessWidget {
  const DrinkTileWidget({
    super.key, required this.drinkName, required this.enName, required this.price, required this.imgUrl,
  });

  final String drinkName;
  final String enName;
  final int price;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imgUrl),
            radius: 48,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(drinkName, style: TextStyle(fontWeight: FontWeight.bold),),
              Text(enName, style: TextStyle(fontWeight: FontWeight.w200),),
              SizedBox(
                height: 8,
              ),
              Text(price.toString() + '원' , style:TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}