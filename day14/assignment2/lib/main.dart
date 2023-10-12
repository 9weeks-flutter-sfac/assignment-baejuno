// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:assignment2/pages/contact.dart';
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
  // This widget is the root of your application.
//   readData() async {

//   Dio dio = Dio();
//   var url = "https://jsonplaceholder.typicode.com/users";
//   var res = await dio.get(url);
//   if (res.statusCode == 200){
//     var newData = List<Map<String,dynamic>>.from(res.data).toList();
//     var data = newData.map((e) => User.fromMap(e)).toList();
//   }
// }
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Contact(),
    );
  }
}
