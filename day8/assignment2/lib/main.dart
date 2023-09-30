// ignore_for_file: prefer_const_constructors

import 'package:assignment2/home.dart';
import 'package:assignment2/home1.dart';
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
      home: Homeone(),
    );
  }
}
