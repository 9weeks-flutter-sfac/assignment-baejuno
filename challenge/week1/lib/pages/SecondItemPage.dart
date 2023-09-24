import 'package:flutter/material.dart';

class SecondItemPage extends StatefulWidget {
  const SecondItemPage({super.key});

  @override
  State<SecondItemPage> createState() => _SecondItemPageState();
}

class _SecondItemPageState extends State<SecondItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good day'),
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
                child: Image.asset('assets/images/music_good_day.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('Good Day',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4.0,bottom: 8.0),
                child: Text('Surfaces',style: TextStyle(color: Colors.white),),
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