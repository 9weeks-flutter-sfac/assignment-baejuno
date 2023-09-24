// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile({
    super.key, required this.musicName, required this.siger, required this.imgPath,
  });
  final String musicName;
  final String siger;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                leading: ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                    child:Image.asset(imgPath, width: 60, height: 60,),
                    
                ),
                title: Text(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  musicName,
                ),
                subtitle: Text(
                  style: TextStyle(color: Colors.white, fontSize: 13),
                  siger,
                ),
                trailing: Wrap(
                  spacing: 8,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(color: Colors.white, Icons.play_arrow),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(color: Colors.white, Icons.skip_next),
                    ),
                  ],
                ),
              ),
              //음악 재생 현황 선
              Row(
                children: [
                  Container(
                    height: 1,
                    width: 16,
                    color: Colors.white70,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.white38,
                    ),
                  ),
                ],
              )
            ],
          ),
    );
  }
}
