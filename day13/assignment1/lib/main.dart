// ignore_for_file: must_be_immutable, avoid_print, unnecessary_new, prefer_const_constructors

import 'dart:convert';

import 'package:assignment1/test.dart';
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

  Future<Active> getData() async {
    final response = await dio.get("https://www.boredapi.com/api/activity");
    var tmp = Active.fromMap(response.data);
    return tmp;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: FutureBuilder(
              future: getData(),
              builder: (BuildContext context, AsyncSnapshot snapshot){
                if (snapshot.connectionState == ConnectionState.done) {
                  return Center(
                    child: 
                    Text(snapshot.data.key.toString()),
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

