import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoHome extends StatefulWidget {
  const PhotoHome({super.key});

  @override
  State<PhotoHome> createState() => _PhotoHomeState();
}  

  var _imagePicker = ImagePicker();
  List<XFile?> images = [null,null,null,null];

class _PhotoHomeState extends State<PhotoHome> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("포토네컷"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            children: 
              images
              .asMap()
              .entries
              .map((e) => Expanded(
                child: InkWell(
                  onDoubleTap: () => setState(() {
                    images[e.key] = null;
                  }),
                  onTap: () async {
                    var xfile = await _imagePicker.pickImage(source: ImageSource.gallery);
                    if(xfile != null) {
                      images[e.key] = xfile;
                      setState(() { 
                      });
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      image: images[e.key] != null 
                      ? DecorationImage(
                        image: FileImage(File(images[e.key]!.path)),
                        fit: BoxFit.cover) 
                        : null,
                      color: Colors.white12
                    ),
                  ),
                ) 
                )).toList()
          )
        ,),
      )
    );
  }
}