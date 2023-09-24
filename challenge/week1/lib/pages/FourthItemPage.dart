import 'package:flutter/material.dart';

class FourthItemPage extends StatefulWidget {
  const FourthItemPage({super.key});

  @override
  State<FourthItemPage> createState() => _FourthItemPageState();
}

class _FourthItemPageState extends State<FourthItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I Wish I Missed My Ex'),
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
                child: Image.asset('assets/images/music_i_wish_i_missed_my_ex.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('I Wish I Missed My Ex',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4.0,bottom: 8.0),
                child: Text('마할리아 버크마',style: TextStyle(color: Colors.white),),
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