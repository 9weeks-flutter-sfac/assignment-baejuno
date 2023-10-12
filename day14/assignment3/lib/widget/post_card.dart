// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment3/models/api.dart';
import 'package:assignment3/widget/post_bottom_sheet.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post; 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(post.id.toString()),
      ),
      title : Text(post.title),
      subtitle: Text(post.body),
      onTap: () {
        showModalBottomSheet(
          context: context, 
          builder: (context) => PostBottomSheet(post:post),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )

          );
      },
    );
  }
}
