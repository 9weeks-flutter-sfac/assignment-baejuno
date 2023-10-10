// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment1/contentwidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// http://52.79.115.43:8090/api/collections/options/records
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
      body: ContentWidget(),
      ),
    );
  }
}