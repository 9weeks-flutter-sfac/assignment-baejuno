import 'package:assingment4/pages/ThirdPage.dart';
import 'package:assingment4/pages/FirstPage.dart';
import 'package:assingment4/pages/SecondPage.dart';
import 'package:assingment4/pages/ThirdPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
     
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('5일차 과제'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)  => const FirstPage())
                );
              },
            child: Text('1번 과제')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)  => const SecondPage())
                );
              },
            child: Text('2번 과제')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)  => const ThirdPage())
                );
              },
            child: Text('3번 과제')
            ),
          ],
        ),
      ),
    );
  }
}


