import 'package:flutter/material.dart';

class ProductColorCircle extends StatelessWidget {
  ProductColorCircle({this.color, this.colorCode,this.dotSize});
  Color? color;
  Color? colorCode;
  double? dotSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: dotSize??23.5,
        width: dotSize??23.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorCode ?? color,
        ),
      ),
    );
  }
}
