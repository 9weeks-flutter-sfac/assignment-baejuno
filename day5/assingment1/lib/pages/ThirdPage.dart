// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assingment4/pages/IconListView.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
    //상태
  bool reSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 240,
              child: IconListView(isreSet: reSet),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
            setState(() {
              reSet = !reSet;
            });
        },
      ),
    );
  }
}