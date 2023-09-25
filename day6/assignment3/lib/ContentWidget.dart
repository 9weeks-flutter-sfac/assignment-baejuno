// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers
// ignore_for_file: prefer_const_constructors

import 'package:assignment3/FoodWidget.dart';
import 'package:assignment3/pages/AdminPage.dart';
import 'package:flutter/material.dart';


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
    Map foodListmap = {
      '맥주' : 'assets/images/option_beer.png',
      '떡볶이' : 'assets/images/option_bokki.png',
      '김밥' : 'assets/images/option_kimbap.png',
      '오므라이스' : 'assets/images/option_omurice.png',
      '커틀렛' : 'assets/images/option_pork_cutlets.png',
      '라면' : 'assets/images/option_ramen.png',
      '우동' : 'assets/images/option_udon.png',
    };
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: foodList.isEmpty ? null : FloatingActionButton.extended(
          onPressed: () {
            setState(() {
            });
          },
          label: Text('결제하기'), 
        ),
        appBar: 
        AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: GestureDetector(
            onDoubleTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminPage())),
            child: 
            Text('분식왕 이테디 주문하기',style: TextStyle(color: Colors.black),
            )
          ),
        ), 
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("주문 리스트",
          style: 
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(foodList.length, (index) => 
              Padding(padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(foodList[index]),
                      ),
                      GestureDetector(
                        onTap:() {
                          foodList.removeAt(index);
                          setState(() {
                            
                          });
                        },
                        child: Icon(Icons.remove_circle)),
                    ],
                  ),
                ),
                )
              )
            ),
            // child: Text(foodList.toString()),
        
          ),
          Text("음식",
          style: 
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              children: foodListmap.keys.map((key) {
                String imgUrl = foodListmap[key]!;
                return  FoodWidget(food: key, imgUrl: imgUrl, addToFoodList : addToFoodList);
              }).toList()
            ),
          )
        ],
      ),
    );
  }
}