// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment1/page/ContactWidget.dart';
import 'package:flutter/material.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage({
    Key? key,
    required this.name,
    required this.phoneNum,
    required this.imgUrl,
  }) : super(key: key);
  final String name;
  final String phoneNum;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          title: Text('연락처 상세보기'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
      ),
      body:
      ContactWidget(name: name, value: phoneNum, imgUrl: imgUrl,)
    );
  }
}