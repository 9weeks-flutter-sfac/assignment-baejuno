// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assignment2/pages/first-assignment.dart';
import 'package:assignment2/pages/second-assignment.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
      List<int> mathData = [26, 2, 9, 47, 98, 24, 43, 99, 96, 45, 35, 
			19, 37, 60, 31, 74, 26, 4, 28, 19, 59, 14, 75, 13, 
			93, 88, 64, 15, 68, 34, 96, 48, 1, 44, 14, 11, 31, 
			39, 28, 100, 22, 73, 78, 98, 36, 49, 74, 16, 35, 91, 
			14, 73, 93, 49, 3, 99, 4, 29, 86, 56, 17, 13, 97, 55, 
			94, 7, 100, 66, 59, 85, 94, 11, 16, 48, 16, 44, 75, 14, 
			17, 88, 92, 12, 49, 35, 42, 82, 19, 27, 11, 21, 34, 27, 
			47, 40, 66, 90, 99, 93, 63, 90];
    return Scaffold(
      body: PageView(
        children: [
          FirstAssign(listData: mathData),
          SecondAssign(listData: mathData,),
        ]
      ),
    );
  }
}