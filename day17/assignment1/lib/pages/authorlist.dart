// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:assignment1/model/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthorList extends StatefulWidget {
  const AuthorList({super.key});

  @override
  State<AuthorList> createState() => _AuthorListState();
}

class _AuthorListState extends State<AuthorList> {

  Dio dio = Dio();
  Future<User?> readUserData() async {
    var res = await dio.get("http://52.79.115.43:8090/api/collections/users/records?sort=-created");
    if(res.statusCode == 200){
      var data = User.fromMap(res.data);
      return data;
    } 
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('뒤로가기'),
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: readUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
              itemCount: snapshot.data!.items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
              childAspectRatio: 1 / 2, //item 의 가로 1, 세로 2 의 비율
              mainAxisSpacing: 10, //수평 Padding
              crossAxisSpacing: 10, //수직 Padding
              ), 
              itemBuilder: (BuildContext context, int index){
                return CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(snapshot.data!.items[index]["username"])
                    ],
                  ),
                );
              }
            );
          }
          return CircularProgressIndicator();
        }
      )
    );
  }
}