import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconListTile extends StatelessWidget {
  const IconListTile({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,

  });
  final String title;
  final bool isActive;
  final VoidCallback onTap;



  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(title),
      iconColor: isActive ? Colors.red : null,
      leading: const Icon(Icons.sunny),
      onTap: onTap,
    );
  }
}