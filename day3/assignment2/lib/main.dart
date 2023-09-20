// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment2/BottomNav.dart';
import 'package:assignment2/Content.dart';
import 'package:assignment2/MusicTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              Content(musicName: "Come with me", singer:"Surfaces 및 salem ilese", time: "3:00", imgPath: 'assets/images/music_come_with_me.png',),
              Content(musicName: "Good day", singer:"Surfaces", time: "3:00", imgPath: 'assets/images/music_good_day.png',),
              Content(musicName: "Honesty", singer:"Pink Sweat\$", time: "3:09", imgPath: 'assets/images/music_honesty.png',),
              Content(musicName: "I Wish I Missed My Ex", singer:"마할리아 버크마", time: "3:24", imgPath: 'assets/images/music_i_wish_i_missed_my_ex.png',),
              Content(musicName: "Plastic Plants", singer:"마할리아 버크마", time: "3:20", imgPath: 'assets/images/music_plastic_plants.png',),
              Content(musicName: "Sucker for you", singer:"맷 테리", time: "3:24", imgPath: 'assets/images/music_sucker_for_you.png',),
              Content(musicName: "Summer is for falling in love", singer:"Sarah Kang & Eye Love Brandon", time: "3:24", imgPath: 'assets/images/music_summer_is_for_falling_in_love.png',),
              Content(musicName: "These days(feat. Jess Glynne, Macklemore & Dan Caplen)", singer:"Rudimental", time: "3:00", imgPath: 'assets/images/music_these_days.png',),
              Content(musicName: "Zombie Pop", singer:"DRP IAN", time: "3:00", imgPath: 'assets/images/music_zombie_pop.png',),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(),
        bottomSheet: MusicTile(musicName: 'You Make Me', siger: 'Day6', imgPath: 'assets/images/music_you_make_me.png',),
        
        
      ),
    );
  }
}