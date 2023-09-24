import 'package:flutter/material.dart';

class ThirdItemPage extends StatefulWidget {
  const ThirdItemPage({super.key});

  @override
  State<ThirdItemPage> createState() => _ThirdItemPageState();
}

class _ThirdItemPageState extends State<ThirdItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Honesty'),
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
                child: Image.asset('assets/images/music_honesty.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('Honesty',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4.0,bottom: 8.0),
                child: Text('Pink Sweat\$',style: TextStyle(color: Colors.white),),
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