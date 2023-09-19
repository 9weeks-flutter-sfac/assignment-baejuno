import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text('이테디'),
              subtitle: Text('010-1000-2000'),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https//picsum.photos/100/100'),
                child: Text('이'),
              ),   
            ),
             ListTile(
              title: Text('김스틴'),
              subtitle: Text('010-9000-8000'),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https//picsum.photos/100/100'),
                child: Text('김'),
              ),   
            ),
             ListTile(
              title: Text('이주노'),
              subtitle: Text('010-3000-3000'),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https//picsum.photos/100/100'),
                child: Text('이'),
              ),   
            ),
             ListTile(
              title: Text('임헬렌'),
              subtitle: Text('010-2000-8000'),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https//picsum.photos/100/100'),
                child: Text('임'),
              ),   
            ),
             ListTile(
              title: Text('염해리'),
              subtitle: Text('010-1000-1000'),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https//picsum.photos/100/100'),
                child: Text('염'),
              ),    
            ),
          ],
        ), 
      ),
    );
  }
}

