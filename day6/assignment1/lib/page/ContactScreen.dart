import 'package:assignment1/page/ContactWidget.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({
    super.key,
    required this.myConTactList,
  });

  final Map<String, String> myConTactList;

  @override
  Widget build(BuildContext context) {
    return ListView(
     children: myConTactList.keys.map((key) {
        String value = myConTactList[key]!;
        String imgUrl = 'https://picsum.photos/100/100';
        return 
        ContactWidget(name:key, value: value, imgUrl: imgUrl,);
      }).toList(),
    );
  }
}

