// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:assignment3/models/api.dart';
import 'package:assignment3/widget/post_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Dio dio = Dio();


  Future<List<Post>> readData() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var res = await dio.get(url);
    if (res.statusCode == 200){
      var data = List<Map<String,dynamic>>.from(res.data);
      return data.map((e) => Post.fromMap(e)).toList();
    }
    return [];
  }


  @override
  Widget build(BuildContext context) {
    readData();
    return Scaffold(
      body: FutureBuilder(
        future: readData(),
        builder: (context, snapshot) {
          if(snapshot.hasData && snapshot.data != null){
            return ListView.separated(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) => 
              PostTile(post: snapshot.data![index]),
              separatorBuilder: (context,index) =>
              ((index+1) % 5) == 0 ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Post ${index+2} ~ ${index+7}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              ) : SizedBox(),
            );
          }
          return LinearProgressIndicator();
        },
      ),
    );
  }
}