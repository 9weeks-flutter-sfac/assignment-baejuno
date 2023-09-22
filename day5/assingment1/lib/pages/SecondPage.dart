
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    super.key,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('2번 문제'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: textController,
                onChanged: (value) { 
                  setState(() {
                  });
                },
              ),
              Text(textController.text)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              textController.clear();
            });
          },
          child: Icon(Icons.close),
        ),
      );
  }
}