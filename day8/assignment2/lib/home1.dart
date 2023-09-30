// ignore_for_file: avoid_print, prefer_const_constructors, body_might_complete_normally_nullable, prefer_final_fields, unnecessary_brace_in_string_interps, unused_element

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';

class Homeone extends StatefulWidget {
  const Homeone({super.key});

  @override
  State<Homeone> createState() => _HomeoneState();
}

class _HomeoneState extends State<Homeone> {
  final dio = Dio();
  List msgList = [];

  RefreshController _refreshController = RefreshController(initialRefresh: false );

  Future<List> getData() async {
    await Future.delayed(Duration(seconds: 2));
    final response = await dio.get('https://sniperfactory.com/sfac/http_day16_dogs');
    return response.data["body"];
  }

  Future<void> _loadData() async {
    try {
      msgList = await getData();

    } catch (e) {
      print('오류가 발생 했습니다 : ${e}');
    } finally {
      _refreshController.refreshCompleted();
    }
  }
  

  Widget _buildCardWithShimmer(int index) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white, // Shimmer의 배경색을 흰색으로 설정
                ),
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                height: 120,
              ),
            ),
          ),
          Text("Loading"),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Icon(Icons.chat),
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    print("setState");
    return Scaffold(
      appBar: AppBar(
        title: Text('8일차 과제'),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _loadData,
        child: FutureBuilder(
            future: _loadData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                print("loadData로 진행중");
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: msgList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1,
                    crossAxisCount: 2
                  ),
                  itemBuilder: (BuildContext context, int index){
                    return _buildCardWithShimmer(index);
                  }
                );
              }
              else if (snapshot.connectionState == ConnectionState.done) {
                print(msgList); 
                return GridView.builder(
                        shrinkWrap: true,
                        itemCount: msgList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(   
                        childAspectRatio: 1 / 1,
                        crossAxisCount: 2,
                        ), 
                        itemBuilder: (BuildContext context, int index){
                          Card(
                            child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(  
                                  borderRadius: BorderRadius.circular(30)
                                  ),
                                clipBehavior: Clip.antiAlias,
                                width: double.infinity,
                                height: 120,
                                child: 
                                  Image.network(msgList[index]['url'],fit: BoxFit.cover,)),
                                  ),
                              Text(msgList[index]['msg']),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                child: Icon(Icons.chat)
                            ),
                          ),
                        ]
                      ),
                    );
                  }     
                );
              }
              else {
                print("ㅎㅇㅎㅇ");
                return Container();
              }
            },
          ),
      ),
    );
  }
}