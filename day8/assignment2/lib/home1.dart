// ignore_for_file: avoid_print, prefer_const_constructors, body_might_complete_normally_nullable, prefer_final_fields, unnecessary_brace_in_string_interps, unused_element

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Homeone extends StatefulWidget {
  const Homeone({super.key});

  @override
  State<Homeone> createState() => _HomeoneState();
}

class _HomeoneState extends State<Homeone> {
  final dio = Dio();
  final Connectivity _connectivity = Connectivity();
  List msgList = [];
  bool isNetworkConnect = true; //네트워크 연결 상태
  bool isCheckingNetwork = false; //네트워크 연결 확인 중
  RefreshController _refreshController = RefreshController(initialRefresh: false );

  Future<List> getData() async {
    await Future.delayed(Duration(seconds: 2));
    final response = await dio.get('https://sniperfactory.com/sfac/http_day16_dogs');
    return response.data["body"];
  }

  Future<void> _loadData() async {
    setState(() {
      
    });
    try {
      msgList = await getData();

    } catch (e) {
      print('오류가 발생 했습니다 : ${e}');
    } 
  }

  void _onRefresh() {
    setState(() {
      _refreshController.refreshCompleted();
    });
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



void checkConnectivityNetwork() async {
    isCheckingNetwork = true; //네트워크 연결 확인 중
    setState(() {}); //네트워크 연결 확인 중 화면으로 그리기

    final connectivityResult =
        await (Connectivity().checkConnectivity()); //네트워크 연결 확인
    await Future.delayed(
        Duration(milliseconds: 1500)); // 연결 확인 중 화면을 출력하기 위한 딜레이

    //네트워크가 연결된 경우
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      isNetworkConnect = true; //네트워크 연결 됨//데이터 가져오기
    } else {
      //네트워크가 연결 되지 않은 경우
      isNetworkConnect = false; //네트워크 연결 안됨
    }
    isCheckingNetwork = false; //네트워크 연결 확인 종료
    setState(() {}); //결과에 맞는 화면 그리기
  }


  @override
  Widget build(BuildContext context) {
    print("setState");
    return Scaffold(
      appBar: AppBar(
        title: Text('8일차 과제'),
      ),
      body:!isCheckingNetwork && isNetworkConnect ?
            FutureBuilder(
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
                return SmartRefresher(
                       controller: _refreshController,
                        enablePullDown: true,
                        onRefresh: _onRefresh,
                        child:GridView.builder(
                        shrinkWrap: true,
                        itemCount: msgList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(   
                        childAspectRatio: 1 / 1,
                        crossAxisCount: 2,
                        ), 
                        itemBuilder: (BuildContext context, int index){
                          return
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
                 )
                );
              }
              else {
                print("ㅎㅇㅎㅇ");
                return Container();
              }
            },
          ): Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isCheckingNetwork) Text('인터넷이 연결 확인중입니다'), // 연결 확인 중 메세지
                  if (!isCheckingNetwork)
                    Text('인터넷이 연결되지 않았습니다!'), // 연결되지 않음 메세지
                  SizedBox(height: 16),
                  // 연결 확인중 progress
                  if (isCheckingNetwork)
                    SpinKitWave(
                      color: Colors.blue,
                      size: 32.0,
                    ),
                ],
              ),
            ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
            checkConnectivityNetwork();

          },
          child: Icon(Icons.wifi_find),
        ),
    );
  }
}