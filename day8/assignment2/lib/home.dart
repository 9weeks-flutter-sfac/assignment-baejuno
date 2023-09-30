// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<Home> createState() => _HomeState();
}

// key => body value => list <map> (key => msg  vaule => url)
class _HomeState extends State<Home> {
  final dio = Dio();
  List msgList = [];

  RefreshController _refreshController = RefreshController(initialRefresh: false );


  Future<List> getData() async {
    final response = await dio.get('https://sniperfactory.com/sfac/http_day16_dogs');
    return response.data["body"];
  }

  Future<void> _loadData() async {
    try {
      final data = await getData();
      setState(() {
      });
    } catch (e) {
      print('오류가 발생 했습니다 : ${e}');
    } finally {
      _refreshController.refreshCompleted();
    }
  }

  @override
  void initState() {
    super.initState();
    _loadData();
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
    print("빌드 성공");
    return Scaffold(
      appBar: AppBar(
        title: Text('8일차 과제'),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _loadData,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: msgList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(   
            childAspectRatio: 1 / 1,
            crossAxisCount: 2,
          ), 
          itemBuilder: (BuildContext context, int index){
            
            return  msgList.isEmpty ? _buildCardWithShimmer(index) : 
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
              ]),
            );
          }
        ),
      )
    );
  }
}