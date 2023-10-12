// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:assignment3/models/api.dart';

class PostBottomSheet extends StatelessWidget {
  const PostBottomSheet({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(post.title, style: TextStyle(fontWeight: FontWeight.bold),),
          Text(post.body)
        ],
      ),

    );
  }
}
