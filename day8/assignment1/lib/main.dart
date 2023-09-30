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
  
  final dio = Dio();

  void getHttp() async {
    for (int i = 100; i < 151; i ++){
          try {
          final response = 
          await dio.post(
            'https://sniperfactory.com/sfac/http_assignment_${i}',
            options: Options(
              headers: {
                'user-agent' : 'SniperFactoryBrowser',
                'authorization' : 'asdf'
              }
            ));
          print(response.data);
          } catch (e) {
            print('error');
          }
      }
  } 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP 통신'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                TextButton(
                onPressed: getHttp,
                child: Text('데이터 확인하기',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

