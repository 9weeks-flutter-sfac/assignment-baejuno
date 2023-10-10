// import 'dart:ffi';

// ignore_for_file: must_be_immutable, unnecessary_new, prefer_const_constructors, avoid_print
import 'package:assignment2/info.dart';
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

    var dio = new Dio();
    Future<Info> getData() async {
      print("getsa");
      final response = await dio.get("https://sniperfactory.com/sfac/http_json_data");
      var factory = Info.fromMap(response.data["item"]);
      return factory;
    }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SafeArea(
        child: Scaffold(
          body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Card(
                          child: 
                          Image.network(snapshot.data.imgUrl)),
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(snapshot.data.name),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(snapshot.data.description),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: ElevatedButton(
                                  onPressed: (){}, 
                                  child: Text("${snapshot.data.price}원 결제하고 등록")),
                              )
                            ],
                          ),
                        )
                        
                    ],
                  ),
                );
              }
              return CircleAvatar();
            },
          ),
        ),
      ),
    );
  }
}

