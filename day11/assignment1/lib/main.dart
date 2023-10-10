// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      theme: ThemeData.dark(),
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.cover,
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLA3rZ9eerAObm4XAQ5fxjhyIjKg_laOhjTA&usqp=CAU'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('10월 5일 목요일',style: TextStyle(color: const Color.fromARGB(255, 147, 224, 150),fontSize: 30),),
                Text('17:19',style: TextStyle(color: const Color.fromARGB(255, 147, 224, 150), fontSize: 120,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: Icon(Icons.highlight),
              ),
              FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: Icon(Icons.camera),),
            ],
          )
        ),
      ), 
    );
    
  }
}
