// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class Write extends StatefulWidget {
  const Write({super.key});

  @override
  State<Write> createState() => _WriteState();
}

class _WriteState extends State<Write> {
  final _myController = TextEditingController();

  @override
  void dispose(){
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("뒤로가기"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('소원 수리하기',style: TextStyle(fontFamily: "secrete",fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: _myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '소원을 말해봐'
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                SecretCatApi.addSecret(_myController.text);
              },
              child: Text('소원 빌기')
            )  
          ],
        ),
      ),
    );
  }
}