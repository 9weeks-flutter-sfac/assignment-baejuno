
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];
    var scrollController = ScrollController();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('5일차 과제'),
        ),
      body: 
      ListView.builder(
        controller: scrollController,
        itemCount: animalList.length,
        itemBuilder: (BuildContext ctx, int idx){
          return Column(
            children: [
              Container(
                height: 200,
                child: Center(child: Text(animalList[idx]))
                ),
              ],
            );
          }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            scrollController.jumpTo(0);
          },
          child: Icon(Icons.arrow_upward),
        ),
      );
  }
}