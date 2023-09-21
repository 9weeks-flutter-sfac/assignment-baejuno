// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment1/CalCulWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CalCulWidget(),
    ),
    
  );
  }
}

