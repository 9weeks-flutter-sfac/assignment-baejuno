import 'package:assignment3/pages/firstpage.dart';
import 'package:assignment3/pages/secondpage.dart';
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
      home: PageView(
          children: [
           FirstPage(),
           Secondpage(), 
          ],
        ),
    );
  }
}

