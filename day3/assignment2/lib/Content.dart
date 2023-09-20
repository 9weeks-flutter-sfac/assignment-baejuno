// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({
    super.key, required this.musicName, required this.singer, required this.time, required this.imgPath
  });
  final String musicName;
  final String singer;
  final String time;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 8),
      child: Row(
        children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:Image.asset(imgPath, width: 60, height: 60,),
            ),
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  child: 
                  Text(musicName, 
                  style: TextStyle(color: Colors.white, fontSize: 18),maxLines: 2, overflow: TextOverflow.ellipsis,)),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.white,  size: 13,),
                      SizedBox(
                        width: 5,
                      ),
                      if (singer.length > 20)
                      Container(
                        width: 150,
                        child: Text(singer, style: TextStyle(color: Colors.grey),maxLines: 1, overflow: TextOverflow.ellipsis,)),
                      if (singer.length <= 20)
                      Container(
                        child: Text(singer, style: TextStyle(color: Colors.grey),maxLines: 1, overflow: TextOverflow.ellipsis,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(' · ', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:3),
                        child: Text(time,style: TextStyle(color: Colors.grey),),
                      )
                    ],
                  ),
                ),
              ],
             ),  
           ),
           Expanded(
              child: Container(),
           ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
            )
        ],
      ),
    );
  }
}