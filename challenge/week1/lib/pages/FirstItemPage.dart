import 'package:flutter/material.dart';

class FirstItemPage extends StatefulWidget {
  const FirstItemPage({super.key});

  @override
  State<FirstItemPage> createState() => _FirstItemPageState();
}

class _FirstItemPageState extends State<FirstItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Come with me'),
        backgroundColor: Colors.black,
      ),
      body: Container(

        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/music_come_with_me.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('Come with me',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4.0,bottom: 8.0),
                child: Text('Surfaces 및 salem ilese',style: TextStyle(color: Colors.white),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.skip_previous,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.play_arrow,color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.skip_next,color: Colors.white),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}