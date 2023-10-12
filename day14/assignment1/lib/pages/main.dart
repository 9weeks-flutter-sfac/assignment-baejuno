import 'dart:ui';

import 'package:assignment1/model/todo.dart';
import 'package:assignment1/widget/filter_bottom_sheet.dart';
import 'package:assignment1/widget/todocard.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   var url = "https://jsonplaceholder.typicode.com/todos";

  Dio dio = Dio();

  List<Todo> todos = [];
  TodoFilter todoFilter = TodoFilter.all;

  readTodo() async {
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      var newData = List<Map<String,dynamic>>.from(response.data);
      setState(() => todos = newData.map((e) => Todo.fromMap(e)).toList());
    }  
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(),
          ),
        ),
        title: Text("Todo App"),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => FilterBottomSheet(
                  filter: todoFilter, 
                  onApply: (value) {
                    setState(()=>todoFilter = value);
                  },
               )
              );
            },),
          IconButton(
            icon: Icon(Icons.refresh_sharp),
            onPressed:() {
              readTodo();
            }, 
          )
        ],
      ),
      body: ListView.builder(
        itemCount: filterMake(todos).length,
        itemBuilder: 
        (context, index) => TodoCard(
          todo:filterMake(todos)[index],
        ),
      ),
    );
  }


  List<Todo> filterMake(List<Todo> value) {
    switch (todoFilter) {
      case TodoFilter.all:
        return value;
      case TodoFilter.completed: 
        return value.where((e) => e.completed == true).toList();
      case TodoFilter.incompleted:
        return value.where((e) => e.completed == false).toList();
    }

  }

}