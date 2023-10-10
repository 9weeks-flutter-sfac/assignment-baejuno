// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({
    Key? key,
    required this.food,
    required this.imgUrl,
    required this.addToFoodList
  }) : super(key: key);
  final String food;
  final String imgUrl;
  final Function() addToFoodList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: addToFoodList,
      child :Card(
        child: Container(
          width: 100,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.network(imgUrl,fit: BoxFit.cover,width: 150, height: 80,)
                ),
              Text(food,style: TextStyle(fontWeight: FontWeight.bold),),
              Text('[담기]')
            ],
          ),
        ),
      ),
    );
  }
}

