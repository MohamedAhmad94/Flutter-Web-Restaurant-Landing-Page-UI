import 'dart:ui';

import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String? title;
  final VoidCallback? press;

  const MenuItem({Key? key, this.title, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(title!.toUpperCase(),
            style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}
