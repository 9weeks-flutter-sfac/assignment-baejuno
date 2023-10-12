// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:assignment2/model/image.dart';
import 'package:assignment2/pages/gallery.dart';

class DogDetail extends StatelessWidget {
  const DogDetail({
    Key? key,
    required this.dogimg,
  }) : super(key: key);
  final NetImage dogimg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(dogimg.message),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: 
              Text("close"))
          ],
        ),
      ),
    );
  }
}
