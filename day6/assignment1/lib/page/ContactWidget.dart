// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:assignment1/page/ContactDetailPage.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
    required this.name,
    required this.value,
    required this.imgUrl,
  }) : super(key: key);
  final String name;
  final String value;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => 
            ContactDetailPage(name: name, phoneNum: value, imgUrl: imgUrl,)
            )
          );
        },
      title: Text(name),
      subtitle: Text(value),
      trailing: Icon(Icons.call),
      leading: CircleAvatar(
      backgroundImage: NetworkImage(imgUrl),
    child: Text(name[0]),
      ),
    );
  }
}
