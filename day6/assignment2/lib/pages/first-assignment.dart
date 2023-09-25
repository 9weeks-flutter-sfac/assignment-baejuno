// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FirstAssign extends StatelessWidget {
  const FirstAssign({
    Key? key,
    required this.listData,
  }) : super(key: key);
  final List<int> listData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          children: listData.map((e) => 
            Card(
              color: Colors.amber,
              child: Center(
                child: Text(e.toString()),
              ),
            )
          ).toList()
        ),
      )
    );
  }
}
