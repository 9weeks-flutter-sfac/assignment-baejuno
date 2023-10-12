// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_new, non_constant_identifier_names

import 'package:assignment2/model/image.dart';
import 'package:assignment2/widget/dog_detail.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}



class _GalleryState extends State<Gallery> {

  Dio dio = new Dio();

  Future<NetImage?> getData() async {
    final response = await dio.get('https://dog.ceo/api/breeds/image/random');
    var ImgJson = NetImage.fromMap(response.data);
    if (response.statusCode == 200) {
      return ImgJson;
    }
    
    return null;
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 3,
          childAspectRatio: 1 / 1
        ),
        itemBuilder: (context,index) {
          print(index);
          return FutureBuilder(
            future: getData(),
            builder: (context, snapshot){
              if(snapshot.hasData) {
                return snapshot.data?.message == null ? SizedBox() 
                : GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context, 
                      builder: (context) => DogDetail(dogimg: snapshot.data!,));
                  },
                  child: Image.network(snapshot.data!.message,
                  fit: BoxFit.cover,),
                );
              }
              return CircularProgressIndicator();
            },
          );
        }

      ),
    );
  }
}