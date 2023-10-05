// ignore_for_file: prefer_const_constructors

import 'package:assignment2/pages/authorlist.dart';
import 'package:assignment2/pages/postlist.dart';
import 'package:assignment2/pages/write.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/detective.png',width: 300,height: 150,),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text("레이튼의 소원 수리함", style: TextStyle(fontFamily: "secrete",fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                margin: EdgeInsets.all(4),
                width: 350,
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return PostList();
                          }));
                        },
                        child: Container(
                          width: 330,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white54,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20.0,bottom:3,right: 10),
                                child: Image.asset('assets/images/gold-key.png',height: 50,),
                              ),
                              Text("소원 수리함 열기",style: TextStyle(fontFamily: "secrete",fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(width: 50,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                            return AuthorList();
                          }));
                        },
                        child: Container(
                          width: 330,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white54,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20.0,bottom:3,right: 10),
                                child: Image.asset('assets/images/writer.png',height: 50,),
                              ),
                              Text("작성자들 보기",style: TextStyle(fontFamily: "secrete",fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(width: 50,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Write();
                          }));
                        },
                        child: Container(
                          width: 330,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white54,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20.0,bottom:3,right: 10),
                                child: Image.asset('assets/images/writing.png',height: 50,),
                              ),
                              Text("나도 써보기",style: TextStyle(fontFamily: "secrete",fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(width: 50,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            )
          ],
        )
      )
    );
  }
} 
