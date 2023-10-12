// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, body_might_complete_normally_nullable
import 'package:assignment4/models/dict.dart';
import 'package:assignment4/widget/meaning_card.dart';
import 'package:flutter/material.dart';

class DictCard extends StatelessWidget {
  const DictCard({
    Key? key,
    required this.dict,
  }) : super(key: key);
  final Dict dict;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dict.word, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dict.meanings.length,
              itemBuilder: (context, index){
                return MeaningCard(meaning: dict.meanings[index]);
            })
          ],
        ),
      ),
    );
  }
}
