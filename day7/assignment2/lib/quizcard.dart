// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    Key? key,
    required this.quiz,
    required this.onCorrect,
    required this.onIncorrect,
  }) : super(key: key);

  final Map<String,dynamic> quiz;
  final Function onCorrect;
  final Function onIncorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:16,vertical: 64),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
            children: [
              Text(quiz["question"],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(
                height: 16,
              ),
              ListView.builder(      
                shrinkWrap: true,
                itemCount: quiz["options"].length,
                itemBuilder: (context,index) => ElevatedButton(
                  onPressed: () {
                    if (index + 1 == quiz["answer"]){
                      onCorrect();
                    } else {
                      onIncorrect();
                    }
                  }
                , child: Text(quiz["options"][index])))
            ],
      ),
    );
  }
}
