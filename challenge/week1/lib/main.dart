// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:week1/BottomNav.dart';
import 'package:week1/pages/FirstItemPage.dart';
import 'package:week1/Content.dart';
import 'package:week1/MusicTile.dart';
import 'package:flutter/material.dart';
import 'package:week1/pages/FourthItemPage.dart';
import 'package:week1/pages/SecondItemPage.dart';
import 'package:week1/pages/ThirdItemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Text("아워리스트"),
        backgroundColor: Colors.black,
        leading: Icon(Icons.navigate_before,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.airplay),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ]
        ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: ListView(
          children: [
            InkWell(
              onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>FirstItemPage()) 
              );  
            }, 
              child: Content(musicName: "Come with me", singer:"Surfaces 및 salem ilese", time: "3:00", imgPath: 'assets/images/music_come_with_me.png',),
            ),
            InkWell(
              onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>SecondItemPage()) 
              );  
            }, 
              child: Content(musicName: "Good day", singer:"Surfaces", time: "3:00", imgPath: 'assets/images/music_good_day.png',),
            ),
            InkWell(
              onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>ThirdItemPage()) 
              );  
            }, 
              child: Content(musicName: "Honesty", singer:"Pink Sweat\$", time: "3:09", imgPath: 'assets/images/music_honesty.png',),
            ),
            InkWell(
              onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>FourthItemPage()) 
              );  
            }, 
              child: Content(musicName: "I Wish I Missed My Ex", singer:"마할리아 버크마", time: "3:24", imgPath: 'assets/images/music_i_wish_i_missed_my_ex.png',),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
      bottomSheet: MusicTile(musicName: 'You Make Me', siger: 'Day6', imgPath: 'assets/images/music_you_make_me.png',),
      
      
    );
  }
}
