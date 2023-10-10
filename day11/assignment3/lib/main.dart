// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(19, 17, 9, 90),
          leading: Icon(Icons.format_list_bulleted),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit : BoxFit.cover,
              image: NetworkImage('https://t4.ftcdn.net/jpg/02/07/45/97/360_F_207459754_XZ4VRclGSmux91GZ0ukm4oOPcF8wkN08.jpg')
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://play-lh.googleusercontent.com/yETSxqV5IldAmn9FTJQZdBu931Jz_4mldOt-roXlf5BlDck6y9kA-DrfgP22ayCu1W0',width: 50,height: 50,),
                    Text('Pub.dev',style:TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: "Search packages",
                      filled: true,
                      fillColor: Colors.grey,
                
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: 'The official package repository for ',style: TextStyle(fontSize: 20)),
                      TextSpan(text: 'Dart\n',style: TextStyle(color: Colors.blue,fontSize: 20)),
                      TextSpan(text: '                  and ',style: TextStyle(fontSize: 20)),
                      TextSpan(text: 'Flutter ',style: TextStyle(color: Colors.blue,fontSize: 20)),
                      TextSpan(text: 'apps.',style: TextStyle(fontSize: 20))
                    ]
                  ),),
                ),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: 'Supported by ',style: TextStyle(fontSize: 20)),
                    TextSpan(text: 'Google',style: TextStyle(fontSize: 40)),
                  ]
                ))
              ],
            ),
          ),

        ),
        
      ),
    );
  }
}

