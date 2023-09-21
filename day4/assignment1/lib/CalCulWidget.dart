import 'package:flutter/material.dart';

class CalCulWidget extends StatelessWidget {
  const CalCulWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
      int valueX = 0;
      int valueY = 0;

    return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('x의 값은?'),
            ),
            Container(
              width: 200,
              child: TextField(
                onChanged: (value) {
                  valueX = int.parse(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'x값을 입력하세요',
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('y의 값은?'),
            ),
            Container(
              width: 200,
              child: TextField(
                onChanged: (value) => {
                  valueY = int.parse(value)
                } ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'y값을 입력하세요',
                ),
              ),
            ),
          ],
        ),
      ),
      ElevatedButton(
        onPressed: () {
          String result = (valueX + valueY).toString();;
          showResultDialog('더하기',result,context);
        }, 
        child: Text('더하기의 결과값은')
        ),
      ElevatedButton(
        onPressed: () {
          String result = (valueX * valueY).toString();;
          showResultDialog('곱하기',result,context);
        }, 
        child: Text('곱하기의 결과값은')
        ),
      ElevatedButton(
        onPressed: () {
          String result = (valueX - valueY).toString();;
          showResultDialog('빼기',result, context);
        }, 
        child: Text('빼기의 결과값은')
        ),
      ElevatedButton(
        onPressed: () {
          String result = (valueX / valueY).toString();
          showResultDialog('나누기', result,context);
          
        }, 
        child: Text('나누기의 결과값은')
        ),
    ],
      ),
    );
  }
 }
  void showResultDialog(String operation, var result, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$operation 결과'),
          content: Text('결과: $result'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
              },
              child: Text('닫기'),
            ),
          ],
        );
      },
    );
  }