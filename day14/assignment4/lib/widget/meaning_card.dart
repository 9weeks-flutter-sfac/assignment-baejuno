// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:assignment4/models/meaning.dart';

class MeaningCard extends StatelessWidget {
  const MeaningCard({
    Key? key,
    required this.meaning,
  }) : super(key: key);
  final Meaning meaning;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(meaning.partOfSpeech, style: TextStyle(fontWeight: FontWeight.bold),),
          ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: meaning.definitions.length,
          itemBuilder: (context,index) => ListTile(
            title : Text(meaning.definitions[index].definition),
          ),
        ),
        ]
      ),
    );
  }
}
