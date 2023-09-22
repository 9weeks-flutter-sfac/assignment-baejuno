import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconListTile extends StatelessWidget {
  const IconListTile({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
    required this.isreSet
  });
  final String title;
  final bool isActive;
  final VoidCallback onTap;
  final bool isreSet;


  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(title),
      iconColor: (isActive && !isreSet) ? Colors.red : null,
      leading: const Icon(Icons.sunny),
      onTap: onTap,
    );
  }
}