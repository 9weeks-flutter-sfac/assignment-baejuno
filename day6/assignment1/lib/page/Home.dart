// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:assignment1/page/ContactScreen.dart';
import 'package:assignment1/page/HistoryScreen.dart';
import 'package:assignment1/page/SettingScreen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Map<String,String> myConTactList = {
      '이테디' : '010-1000-2000',
      '김스틴' : '010-9000-8000',
      '이주노' : '010-3000-3000',
      '임헬렌' : '010-2000-8000',
      '염해리' : '010-1000-1000',
                                };
    return Scaffold(
      appBar: AppBar(
        title: Text('내 연락처'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.add),
      ) ,
      body: [ContactScreen(myConTactList: myConTactList),HistoryScreen(),SettingScreen()][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          _currentIndex = value;
          setState(() {
            
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '최근통화',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ],
      ),  
    );
  }
}



