// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({
    Key? key,
    required this.index,
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.city,
    required this.suite,
    required this.company,
    required this.catchPhrase,
    required this.bs,
  }) : super(key: key);

  final int index;
  final int id;
  final String name;
  final String email;
  final String phone;
  final String city;
  final String suite;
  final String company;
  final String catchPhrase;
  final String bs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network("https://xsgames.co/randomusers/assets/avatars/male/${index}.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 320,
              colorBlendMode: BlendMode.darken,
              color: Colors.black45,
              ),
              Positioned(
                bottom: -48,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: NetworkImage(
                        "https://xsgames.co/randomusers/assets/avatars/male/${index}.jpg"
                      ),
                    ),
                  ),
              )
            ],
          )
          ,
          SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 32),
                  ),
                  Divider(),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 14),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.map),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      city,
                      style: TextStyle(fontSize: 14),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 14),
                      ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
