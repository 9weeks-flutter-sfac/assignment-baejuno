// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:assingment4/pages/IconListTile.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool isSunActive = false;
  bool isMoonActive = false;
  bool isStarActive = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 240,
              child: ListView(
              children: [
              IconListTile( title: 'sun', isActive: isSunActive, onTap: () {setState(() { isSunActive = !isSunActive;});},),
              IconListTile(title: 'moon',isActive: isMoonActive,onTap: () {setState(() {isMoonActive = !isMoonActive;});},),
              IconListTile(title: 'star',isActive: isStarActive,onTap: () {setState(() {isStarActive = !isStarActive;});},),
              TextField(
                onSubmitted: (value) {
                  setState(() {
                    if (value == 'sun')
                    isSunActive = !isSunActive;
                    if (value == 'moon')
                    isMoonActive = !isMoonActive;
                    if (value == 'star')
                    isStarActive = !isStarActive;
                      });
                    },
                  )
                ],
              )
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
            setState(() {
               isSunActive = false;
               isMoonActive = false;
               isStarActive = false;
            });
        },
      ),
    );
  }
}