// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SecondAssign extends StatelessWidget {
  const SecondAssign({
    Key? key,
    required this.listData,
  }) : super(key: key);
  final List<int> listData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(listData.length, 
          (index) => 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: listData[index] * 2,
              height: 24,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red,
              ),
              child: Center(child: Text(listData[index].toString())),
            ),
          ),
        ),
      ),
      )
    );
  }
}


// SizedBox(
//                 child: Container(
//                 width: 2*e.toDouble(),
//                 height: 24,
//                   decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(30)
//                 ),
//                   child: Center(child: Text(e.toString())),), 
//             );
