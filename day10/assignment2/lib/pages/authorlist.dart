// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class AuthorList extends StatelessWidget {
  const AuthorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('뒤로가기'),
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: SecretCatApi.fetchAuthors(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
              childAspectRatio: 1 / 2, //item 의 가로 1, 세로 2 의 비율
              mainAxisSpacing: 10, //수평 Padding
              crossAxisSpacing: 10, //수직 Padding
              ), 
              itemBuilder: (BuildContext context, int index){
                return CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: Column(
                    children: [
                      ShakeY(
                        from:10,
                        duration: const Duration(seconds: 3),
                        infinite: true,
                        child: 
                        Image.network(snapshot.data![index].avatar.toString())),
                      SizedBox(
                        height: 30,
                      ),
                      Text(snapshot.data![index].username,style: TextStyle(fontFamily: "secrete",color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                );
              }
            );
          }
          return CircularProgressIndicator();
        }
      )
    );
  }
}