// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:assignment2/main.dart';
import 'package:assignment2/model/user.dart';
import 'package:assignment2/pages/info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  Future<List<User>> getData() async {
    var url = "https://jsonplaceholder.typicode.com/users";
    Dio dio = Dio();
    var res = await dio.get(url);
    var newData = List<Map<String,dynamic>>.from(res.data);
    var data = newData.map((e) => User.fromMap(e)).toList();
    return data;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Contacts",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index){
                return FadeInRight(
                  delay: Duration(milliseconds: 100*index),
                  child: ListTile(
                    leading: Image.network("https://xsgames.co/randomusers/assets/avatars/male/${index}.jpg"),
                    title: Text(snapshot.data![index].name), 
                    subtitle: Text(snapshot.data![index].email),
                    trailing: IconButton(
                      icon: Icon(Icons.navigate_next),
                      onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context){
                              return Detail(
                                index : index,
                                id : snapshot.data![index].id,
                                name: snapshot.data![index].name, 
                                email: snapshot.data![index].email, 
                                phone: snapshot.data![index].phone, 
                                city: snapshot.data![index].address.city, 
                                suite: snapshot.data![index].address.suite, 
                                company: snapshot.data![index].company.name, 
                                catchPhrase: snapshot.data![index].company.catchPhrase, 
                                bs: snapshot.data![index].company.bs);
                            }
                          )
                        );
                      },
                    ),
                  ),
                );
            });
          }
          return CircularProgressIndicator();
        },
      )
    );
  }
}