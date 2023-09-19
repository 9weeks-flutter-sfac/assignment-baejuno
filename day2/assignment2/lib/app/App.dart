import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 130,
              ),
              Container(
                child: Text('오늘의 하루는' ,style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text('어땠나요?', style: TextStyle(fontSize:20),),
              ),
              Container(
                width: 300,
                height: 200,
                child: PageView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                            Colors.black,
                            Colors.white,]
                        ),
                      ),
                      child:Center(
                      child: Text('우울함',style: TextStyle(fontSize: 20, color: Colors.white),),
                      ), 
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.orange,
                            Colors.yellow,]
                          ),
                        ),
                        child:Center(
                        child: Text('행복함',style: TextStyle(fontSize: 20, color: Colors.white),),
                      ), 
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                            Colors.blue,
                            Colors.green,
                            ],
                          ),
                        ),
                      child:Center(
                        child: Text('상쾌함',style: TextStyle(fontSize: 20, color: Colors.white),),
                      ), 
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 100,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100), 
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/109403631?v=4', 
                        width: 80, 
                        height: 80,
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.all(17),
                      child: Column(
                        children: [ 
                          Text('배준오',style: TextStyle(color: Colors.white, fontSize: 15),),
                          Text('웹 개발',style: TextStyle(color: Colors.white, fontSize: 15),),
                          Text('Flutter',style: TextStyle(color: Colors.white, fontSize: 15),),
                        ],
                      ),
                    ),
                    // + 이미지 넣을 곳
                    Container(
                      width: 90,
                    ),
                    Container(
                      width: 90,
                    ), 
                   Container(
                      alignment: Alignment(1.0,0.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                       ),
                    ),  
                  ],
                ),
              ),          
            ],
          ),
        ),
    );
  }
}

