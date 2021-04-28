import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String? title;
  final VoidCallback? press;

  const DefaultButton({Key? key, this.title, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            backgroundColor: Theme.of(context).primaryColor),
        onPressed: press,
        child: Text(title!.toUpperCase(),
            style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}
