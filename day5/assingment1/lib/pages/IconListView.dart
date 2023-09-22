// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:assingment4/pages/IconListTile.dart';

class IconListView extends StatefulWidget {
  const IconListView({
    Key? key,

    required this.isreSet,

  }) : super(key: key);

  final bool isreSet;

  @override
  State<IconListView> createState() => _IconListViewState();
}

class _IconListViewState extends State<IconListView> {
  //상태
      bool isSunActive = false;
      bool isMoonActive = false;
      bool isStarActive = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        IconListTile( title: 'sun', isActive: isSunActive, onTap: () {setState(() { isSunActive = !isSunActive;});},isreSet:widget.isreSet),
        IconListTile(title: 'moon',isActive: isMoonActive,onTap: () {setState(() {isMoonActive = !isMoonActive;});},isreSet:widget.isreSet),
        IconListTile(title: 'star',isActive: isStarActive,onTap: () {setState(() {isStarActive = !isStarActive;});},isreSet:widget.isreSet),
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
    );
  }
}