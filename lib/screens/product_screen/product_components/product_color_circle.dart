
import 'package:flutter/material.dart';


class ProductColorCircle extends StatelessWidget {
  ProductColorCircle({this.color});
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 23.5,
        width: 23.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color!,
        ),
      ),
    );
  }
}
