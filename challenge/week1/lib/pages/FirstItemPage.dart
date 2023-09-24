// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstItemPage extends StatefulWidget {
  const FirstItemPage({
    Key? key,
    required this.musicName,
    required this.singer,
    required this.imgPath,
  }) : super(key: key);
  final String musicName;
  final String singer;
  final String imgPath;

  @override
  State<FirstItemPage> createState() => _FirstItemPageState();
}

class _FirstItemPageState extends State<FirstItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.musicName),
        backgroundColor: Colors.black,
      ),
      body: Container(

        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(widget.imgPath),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text(widget.musicName,style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4.0,bottom: 8.0),
                child: Text(widget.singer,style: TextStyle(color: Colors.white),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.skip_previous,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.play_arrow,color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.skip_next,color: Colors.white),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}