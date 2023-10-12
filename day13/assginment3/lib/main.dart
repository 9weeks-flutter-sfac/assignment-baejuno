// ignore_for_file: must_be_immutable, avoid_print, unnecessary_new

import 'package:assginment3/model/posts.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Dio dio = new Dio();

  Future<Post> getData(int index) async {
    final response = await dio.get("https://jsonplaceholder.typicode.com/posts");
    print(response.data);
    var tmp = Post.fromMap(response.data);
    return tmp;
  }

  Future<List<Post>> readData() async {
    Dio dio = Dio();
    var url = ("https://jsonplaceholder.typicode.com/posts");
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      print(response.data.runtimeType);
      var data = List<Map<String,dynamic>>.from(response.data);
      var tmp = data.map((e) => Post.fromMap(e)).toList();
      return tmp;
    }
    return [];
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int idx) {
            return FutureBuilder(
              future: readData(), 
              builder: (BuildContext context, AsyncSnapshot snapshot){
                  if (snapshot.connectionState == ConnectionState.done){
                    return Text(snapshot.data[idx].id.toString());
                  }
                  return Text("No Data");
              }
            );
        }),
      ),
     
    );
  }
}

