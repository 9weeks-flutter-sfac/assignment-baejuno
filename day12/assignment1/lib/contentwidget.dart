// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers, avoid_print
// ignore_for_file: prefer_const_constructors

import 'package:assignment1/foodwidget.dart';
import 'package:assignment1/pages/adminpage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({
    Key? key,

  }) : super(key: key);


  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  SharedPreferences? prefs;
  Dio dio = Dio();
  List<String> foodList = [];
  Future<List<dynamic>> getDate() async {
    var res = await dio.get('http://52.79.115.43:8090/api/collections/options/records');
    if(res.statusCode == 200) {
     return res.data["items"]; 
    }
    return [];
  }

  initPreferences() async {
    print("asdf");
    prefs = await SharedPreferences.getInstance();
    print("gdgd");
    
    if(prefs != null){
      var myList = prefs!.getStringList('myMenuList');
      // 떡꿀연
      print(myList);
      foodList = myList ?? [];
      setState(() {});
    } 
  } 

  @override
  void initState() {
    super.initState();
    initPreferences();
  }
  
  
  @override
  Widget build(BuildContext context) {
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
            FutureBuilder(
              future: getDate(),
              builder: (context,snapshat) {
                if(snapshat.connectionState == ConnectionState.done) {
                  return GridView.builder(
                    shrinkWrap: true,
                    itemCount: snapshat.data?.length ?? 0,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      ),
                    itemBuilder: (context,index){
                      return FoodWidget(
                        food: snapshat.data![index]["menu"], 
                        imgUrl: snapshat.data![index]["imageUrl"], 
                        addToFoodList: () {
                          foodList.add(snapshat.data![index]['menu']);
                          if(prefs!=null) {
                            prefs!.setStringList('myMenuList', foodList);
                          }
                          setState(() {
                          });
                      });
                    },
                  );
                }
              return CircularProgressIndicator();
            }
          ),
        ],
      ),
    );
  }
}