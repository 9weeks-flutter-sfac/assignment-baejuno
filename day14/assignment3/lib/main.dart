import 'package:assignment3/models/api.dart';
import 'package:assignment3/pages/mainpage.dart';
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
  // Dio dio = Dio();


  // readData() async {
  //   var url = "https://api.dictionaryapi.dev/api/v2/entries/en/run";
  //   var res = await dio.get(url);
  //   var dict = Dictionary.fromMap(res.data.first);
    
  //   // var data = newData.map((e) => Dictionary.fromMap(e)).toList();
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      home: MainPage(),
    );
  }
}
