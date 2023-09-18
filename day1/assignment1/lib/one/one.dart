import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.yellow, fontSize: 47),
                children: const <TextSpan> [
                  TextSpan(text: '                   안녕하세요!\n간단하게 제', style: TextStyle(color: Colors.black, fontSize: 15)),
                  TextSpan(text: ' 소개', style: TextStyle(color: Colors.blue, fontSize: 20)),
                  TextSpan(text: '를 해보겠습니다\n\n', style: TextStyle(color: Colors.black, fontSize: 15)),
                  TextSpan(text: '   먼저 저의 MBTI는', style: TextStyle(color: Colors.black, fontSize: 15)),
                  TextSpan(text: ' ENTJ', style: TextStyle(color: Colors.red, fontSize: 20)),
                  TextSpan(text: '이고\n', style: TextStyle(color: Colors.black, fontSize: 15)),
                  TextSpan(text: '        직업은', style: TextStyle(color: Colors.black, fontSize: 15)),
                  TextSpan(text: ' 개발자', style: TextStyle(color: Colors.green, fontSize: 20)),
                  TextSpan(text: '입니다.\n\n', style: TextStyle(color: Colors.black, fontSize: 15)),
                  TextSpan(text: '                  꿈', style: TextStyle(color: Colors.yellow, fontSize: 15)),
                  TextSpan(text: '은 없고요\n', style: TextStyle(color: Colors.black, fontSize: 15)),
                  TextSpan(text: '            그냥 놀고 싶습니다.\n\n', style: TextStyle(color: Colors.black,fontSize: 15)),
                  TextSpan(text: '            감사합니다', style: TextStyle(color: Colors.pink, fontSize: 20)),
                ],
              ),
            ),
        ),
      );
  }
}