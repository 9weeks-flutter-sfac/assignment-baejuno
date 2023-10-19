// ignore_for_file: avoid_print

import 'package:assignment1/model/secret.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  Dio dio = Dio();

  Future<List<Map<String,dynamic>>> readData() async {
    var res = await dio.get('http://52.79.115.43:8090/api/collections/secrets/records?sort=-created');
    if (res.statusCode== 200){
       var data = List<Map<String,dynamic>>.from(res.data['items']);
      data.map((e) => Items.fromMap(e)).toList();
      return data;
    }
    return [];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("뒤로가기"),
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: readData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
                print(snapshot.data);
                 return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text(snapshot.data![index]['secret'].toString()),
                        subtitle: Text(snapshot.data![index]['authorName']),
                      ),
                    );
                  });
          }
        return CircularProgressIndicator();
      }
    ));
  }
}
// FutureBuilder(
//             future: SecretCatApi.fetchSecrets(),
//             builder: (context,snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return Text(snapshot.data.toString());
//               }
//               return CircularProgressIndicator();
//             })