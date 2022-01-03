import 'package:flutter/material.dart';

class AppBarNavigation extends StatelessWidget {

  VoidCallback? onClick;
  String? text;
  AppBarNavigation({this.text,this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0,right: 16.0),
        child: Text(text!,textAlign: TextAlign.center,),
      ),
    );
  }
}